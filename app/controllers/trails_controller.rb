#S3 bucket setup
$s3_client = Aws::S3::Client.new
$bucket_name = "wild-loops"
$presigner = Aws::S3::Presigner.new(client: $s3_client)
$trail_objects = $s3_client.list_objects_v2(bucket: $bucket_name, prefix: "trails/").contents
$image_keys = $trail_objects.map { |obj| [File.basename(obj.key, ".*"), obj.key] }.to_h

class TrailsController < ApplicationController
  include ActionController::MimeResponds
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


  def index
      trails = Trail.all
      trails_with_images = trails.map do |trail|
        image_key = $image_keys[trail.name]
        image_url = image_key ? $presigner.presigned_url(:get_object, bucket: $bucket_name, key: image_key, expires_in: 3600) : nil
        trail.as_json(include: [:reports]).merge(image_url: image_url)
      end

    if request.format.json?
      render json: trails_with_images
    else
      file_path = Rails.root.join('public', 'index.html')
        if File.exist?(file_path)
          send_file(file_path, type: 'text/html', disposition: 'inline')
        else
          raise ActionController::RoutingError, 'Not Found'
        end
    end
  end

  def show
    trail = find_trail
    image_key = $image_keys[trail.name]
    image_url = image_key ? $presigner.presigned_url(:get_object, bucket: $bucket_name, key: image_key, expires_in: 3600) : nil
    trail = trail.as_json(include: [:reports]).merge(image_url: image_url)
    render json: trail
  end

  def home_image
  # List all objects in the "home" folder
    home_objects = $s3_client.list_objects_v2(bucket: $bucket_name, prefix: "home/").contents
  
  # Find the first object that includes 'main' in the filename
    main_home_object = home_objects.find { |obj| obj.key.include?("main") }

    placeholder_trail_image = home_objects.find { |obj| obj.key.include?("placeholder") }

    if main_home_object
    # Generate a presigned URL for the found object
        home_image_url = $presigner.presigned_url(:get_object, bucket: $bucket_name, key: main_home_object.key, expires_in: 3600)
        placeholder_trail_image_url = $presigner.presigned_url(:get_object, bucket: $bucket_name, key: placeholder_trail_image.key, expires_in: 3600)
        render json: { home_image_url: home_image_url, placeholder_trail_image_url: placeholder_trail_image_url}
    else
        render json: { error: "Main home image not found" }, status: :not_found
    end
  end
  
  private

  def find_trail
    Trail.find(params[:id])
  end

  def render_unprocessable_entity_response(exception)
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: "Trail not found" }, status: :not_found
  end
end


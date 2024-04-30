class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :authorize, only: [:show, :destroy]

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, include: [:favorites, :reports], status: :created
    end

    def show
        user = User.find(params[:id])
        render json: user, include: [:favorites, :reports]
    end

    def destroy
        user = User.find_by(id: session[:user_id])
        user.destroy
        render json: {}
    end


    private

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def authorize
        return render json: {error: "Please login first to view your profile"}, status: :unauthorized unless session.include? :user_id
    end
    
    def render_not_found_response
        render json: {error: "User not found"}, status: :not_found
    end

    def user_params
        params.permit(:name, :username, :password, :password_confirmation )
    end
end

class FavoritesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :authorize

    def create
        user = find_user
        return render json: {error: "User not found"}, status: :not_found unless user

        favorite = user.favorites.create!(favorite_params)
        render json: {trail_id: favorite.trail_id}, status: :created
    end

    def destroy
        user = find_user
        favorite = user.favorites.find_by(trail_id: params[:id])
        if favorite.nil?
            render json: { error: "Favorite not found" }, status: :not_found
        else
            favorite.destroy
            render json: {trail_id: favorite.trail_id}, status: :ok
        end
    end

    private

    def find_user
        User.find(session[:user_id])
    end

    def favorite_params
        params.permit(:user_id, :trail_id)
    end

    def authorize
        return render json: {error: "Please login first"}, status: :unauthorized unless session.include? :user_id
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Favorite Not Found" }, status: :not_found
    end
end

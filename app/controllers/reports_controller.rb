class ReportsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :authorize, only: [:create, :update, :destroy]

    def index
        if params[:trail_id]
            trail = Trail.find(params[:trail_id])
            reports = trail.reports
        else
            reports = Report.all
        end
        render json: reports, include: [:trail, :user]
    end

    def show
        report = find_report
        render json: report, include: [:trail, :user]
    end

    def create
        user = find_user
        report = user.reports.create!(report_params)
        render json: report, status: :created
    end

    def update
        user = find_user
        report = user.reports.find(params[:id])
        if (user.id != report.user_id)
            return render json: {error: "You are not authorized to edit this visit"}, status: :unauthorized
        else
            report.update!(report_params)
            render json: report, status: :ok
        end
    end

    def destroy
        user = find_user
        report = user.reports.find(params[:id])
        if (user.id != report.user_id)
            return render json: {error: "You are not authorized to delete this visit"}, status: :unauthorized
        else
            report.destroy
            head :no_content
        end

    end

    private

    def find_user
        User.find(session[:user_id])
    end

    def find_report
        Report.find(params[:id])
    end

    def report_params
        params.permit(:date, :road_condition, :trail_condition, :snow, :bugs, :summary, :trail_id, :user_id)
    end

    def authorize
        return render json: {error: "Please login first"}, status: :unauthorized unless session.include? :user_id
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "This report wasn't found" }, status: :not_found
    end
end

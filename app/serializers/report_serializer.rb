class ReportSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trail_id, :date, :road_condition, :trail_condition, :snow, :bugs, :summary

  belongs_to :user, serializer: ReportUserSerializer
  belongs_to :trail, serializer: ReportTrailSerializer
end

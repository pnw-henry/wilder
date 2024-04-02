class TrailReportSerializer < ActiveModel::Serializer
  attributes :date, :road_condition, :trail_condition, :snow, :bugs, :summary
  belongs_to :user, serializer: ReportUserSerializer
end

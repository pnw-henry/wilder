class Report < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    validates :date, presence: true
    validates :road_condition, presence: true, length: { maximum: 100 }
    validates :trail_condition, presence: true, length: { maximum: 100 }
    validates :snow, inclusion: { in: [true, false] }
    validates :bugs, inclusion: { in: [true, false] }
    validates :summary, presence: true, length: { maximum: 500 }
    
end

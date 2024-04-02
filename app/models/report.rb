class Report < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    validates :date, presence: true
    validates :road_condition, presence: true, length: { maximum: 100 }
    validates :trail_condition, presence: true, length: { maximum: 100 }
    validates :snow, presence: true, inclusion: { in: [true, false] }
    validates :bugs, presence: true, inclusion: { in: [true, false] }
    validates :summary, presence: true, length: { maximum: 500 }
    
end

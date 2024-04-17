class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    validates :user_id, presence: true, uniqueness: { scope: :trail_id }
    validates :trail_id, presence: true, uniqueness: { scope: :user_id }
end

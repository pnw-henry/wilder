class Trail < ApplicationRecord
    has_many :reports, dependent: :destroy
    has_many :users, through: :reports
    has_many :favorites, dependent: :destroy

    has_one_attached :image

    validates :name, presence: true
    validates :location, presence: true
    validates :intensity, presence: true, inclusion: { in: %w(Easy Moderate Hard) }
    validates :length, presence: true, numericality: { greater_than: 0 }, allow_nil: true
    validates :elevation_gain, presence: true, numericality: { greater_than: 0 }, allow_nil: true
    validates :highest_point, presence: true, numericality: { greater_than: 0 }, allow_nil: true
end

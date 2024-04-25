class User < ApplicationRecord
    has_many :reports
    has_many :trails, through: :reports
    has_many :favorites

    has_secure_password

    validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 10}
    validates :name, presence: true, length: { minimum: 2, maximum: 20}
    validates :password, presence: true, length: { minimum: 6 }

end

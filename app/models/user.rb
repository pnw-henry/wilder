class User < ApplicationRecord
    has_many :reports
    has_many :trails, through: :reports
    has_many :favorites

    has_secure_password
    validates :name, presence: true, length: { minimum: 2, maximum: 25}
    validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 25}
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }

end

class User < ApplicationRecord
    has_many :reports
    has_many :trails, through: :reports

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :experience, presence: true, inclusion: { in: %w(Beginner Intermediate Expert) }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, confirmation: true
    validates :password_confirmation, presence: true


end

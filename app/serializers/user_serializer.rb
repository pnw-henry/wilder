class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :reports
  has_many :trails, through: :reports
  has_many :favorites
end

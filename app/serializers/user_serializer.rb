class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name

  has_many :reports
  has_many :trails, through: :reports
  has_many :favorites
end

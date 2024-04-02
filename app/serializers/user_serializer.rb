class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :experience

  has_many :reports
  has_many :trails, through: :reports
end

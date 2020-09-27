class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :user_images
  has_many :images
end

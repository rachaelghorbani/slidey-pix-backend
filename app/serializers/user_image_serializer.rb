class UserImageSerializer < ActiveModel::Serializer
  attributes :id, :moves, :completed, :user_id, :image_id
  has_one :user
  belongs_to :image
end

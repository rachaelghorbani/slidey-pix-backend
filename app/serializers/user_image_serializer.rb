class UserImageSerializer < ActiveModel::Serializer
  attributes :id, :moves, :completed, :user_id, :image_id, :grid_size
  has_one :user
  belongs_to :image
end

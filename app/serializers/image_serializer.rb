class ImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :scramble_pos
  has_many :users
  belongs_to :owner
  belongs_to :category
end

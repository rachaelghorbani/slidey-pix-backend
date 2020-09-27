class ImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  has_many :users
end

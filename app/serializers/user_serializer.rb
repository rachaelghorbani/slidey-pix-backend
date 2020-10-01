class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :user_images
  has_many :images
  has_many :custom_images
  
  def images
    object.images.map do |image|
        {id: image.id, img_url: image.img_url, scramble_pos: image.scramble_pos, category: image.category}
    end
  end
  
end

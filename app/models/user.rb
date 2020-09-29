class User < ApplicationRecord
  has_many :custom_images, class_name: "Image"
  has_many :user_images
  has_many :images, through: :user_images
end

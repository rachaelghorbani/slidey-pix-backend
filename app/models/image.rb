class Image < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id", optional: true
  has_many :user_images
  has_many :users, through: :user_images
end

class UserImagesController < ApplicationController
  def index
    user_images = UserImage.all
    render json: user_images
  end
end

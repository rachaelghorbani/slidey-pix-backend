class UserImagesController < ApplicationController
  def index
    user_images = UserImage.all
    render json: user_images
  end

  def create
    user_image = UserImage.find_or_create_by(image_id: params[:user_image][:image_id], user_id: params[:user_image][:user_id])
    render json: user_image
  end

  private

  def user_image_params
    params.require(:user_image).permit(:user_id, :image_id, :moves, :completed)
  end
  
end

class UserImagesController < ApplicationController
  def index
    user_images = UserImage.all
    render json: user_images
  end

  def show
    user_image = UserImage.find(params[:id])
    render json: user_image
  end

  def create
    user_image = UserImage.find_or_create_by(image_id: params[:user_image][:image_id], user_id: params[:user_image][:user_id], grid_size: params[:user_image][:grid_size])
    render json: user_image
  end

  def update
    user_image = UserImage.find(params[:id])
    user_image.update(user_image_params)
    render json: user_image
  end

  private

  def user_image_params
    params.require(:user_image).permit(:user_id, :image_id, :moves, :completed, :grid_size)
  end
  
end

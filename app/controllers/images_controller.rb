class ImagesController < ApplicationController
  before_action :find_image, only: [:show, :update]

  def index
    images = Image.all
    render json: images
  end

  def show
    render json: image
  end

  def create
    params[:scramble_pos] = Image.scrambler
    image = Image.new(image_params)
    image.save
    render json: image
  end

  def update
    image.update(image_params)
    render json: image
  end

  private

  def find_image
    image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:img_url, :user_id, :category_id, :scramble_pos)
  end
end

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
    image = Image.new(image_params)
    image.save
  end

  def update
    image.update(image_params)
  end

  private

  def find_image
    image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:img_url)
  end
end

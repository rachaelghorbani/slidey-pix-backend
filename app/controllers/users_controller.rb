class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]

  def index
    users = User.all
    render json: users
  end

  def show
    render json: user
  end

  def create
    user = User.new(user_params)
    user.save
  end

  def update
    user.update(user_params)
  end

  private

  def find_user
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end

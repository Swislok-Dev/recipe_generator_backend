class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def new
    user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      render json: user, serializer: UserSerializer
    else
      # render json: { message: "User not created" }, status: 422
      render json: { error: user.errors.full_messages }, status: 422
    end
  end

  def show
    user = User.find_by_id(params[:id])
    if user
      render json: user
    else
      render json: { message: "No user found" }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

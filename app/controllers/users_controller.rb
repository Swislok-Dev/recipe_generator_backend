class UsersController < ApplicationController

  before_action :get_user, only: [:destroy]

  def index
    users = User.all
    if users.present?
      render json: users
    else
      render json: { message: "No users found" }
    end
  end

  def create 
    user = User.find_or_create_by(user_params)
    render json: user
  end

  def show 
    user = User.find_by(id: params[:id])
    if user 
      render json: user
    else
      render json: { message: "No user found" }
    end
  end

  # TODO: Write out update method for user
  # def update
  # end

  def destroy
    @user.destroy
    render json: { message: "User has been deleted" }
  end
  
  private

  def get_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end

end

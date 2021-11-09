class UsersController < ApplicationController

  def index
    users = User.all
    if users.present?
      render json: users
    else
      render json: { message: "No users found" }
    end
  end

  def create 
    user = User.find_or_create_by(username: params[:username])
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

  # TODO: Write out destoy method for user
  # def destory
  # end
  
  private

  # def user_params
    # params.require(:user).permit(:username)
  # end

end

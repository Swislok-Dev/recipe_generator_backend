class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: session_params[:username])

    if @user && @user.authenticate(session_params[:password])
      login!
      render json: {
        logged_in: true,
        user: @user
      }
    else
      render json: {
        status: 401,
        errors: ['no such user, please try again']
      }
    end
  end

  def is_logged_in?
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else render json: {
      logged_in: false,
      message: 'no such user'
    }
    end
  end

  def destroy 
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
















  # def new
  #   @@user = User.new
  # end

  # def create
  #   @@user = User.find_by(:id params[:user_id])
    
  # end

  # def destroy
  #   session.clear
  #   # TODO: add a redirect when session is cleared
  # end

  # private

  # def logged_in?
  #   !!session[:user_id]
  # end

  # def current_user
  #   @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  # end



  # def new_session
  #   if @@user && @@user.authenticate(params[:password_digest])
  #     session[:user_id] = @@user.id
  #   else
  #     render :new
  #   end
  # end

  # def user_valid?
  #   if @@user.valid?
  #     session[:user_id] = @@user.id
  #   else
  #     render :new
  #   end
  # end



end

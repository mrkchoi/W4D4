class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(params[:user][:email], params[:user][:password])

    if @user.save
      
    else
      
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_digest, :session_token)
  end
end

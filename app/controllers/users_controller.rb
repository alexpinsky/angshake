class UsersController < ApplicationController

  def login
    @user = User.find_by(username: params[:username])
    if @user and @user.password == params[:password]
      render json: { status: 200 }, status: 200
    else
      render json: { status: 401 }, status: 401
    end
  end  
end

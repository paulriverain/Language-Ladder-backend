class Api::V1::UsersController < ApplicationController
  def index
    #code
    @users = User.all
    render json: @users
  end

  def create
    #code
    @user = User.new(username: params[:username], bio: params[:bio], password: params[:password])

    if @user.save
      render json: @user
    else
      render json: {error: @user.errors.full_messages}, status: 401
    end

  end
end

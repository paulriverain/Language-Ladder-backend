class Api::V1::UsersController < ApplicationController
  def index
    #code
    @users = User.all
    render json: @users
  end
end

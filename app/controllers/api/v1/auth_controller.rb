class Api::V1::AuthController < ApplicationController

  def create
    #code
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token = JWT.encode({id: @user.id, username: @user.username}, 'secret_code', "HS256")
      render json: {id: @user.id, username:  @user.username, token: token}
    else
      render json: {error: 'Invalid name or password'}
    end
  end

  def show
    token = request.headers['Authenticate']
    decoded = JWT.decode(token, 'secret_code', true, { algorithm: "HS256" }).first
    id = decoded["id"]

    @user = User.find_by(id: id)
    if @user
      render json: {id: @user.id, username: @user.username }
    else
      render json: {error: "Could not authenticate"}
    end
  end




end

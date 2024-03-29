class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
    )
    @user.save
    render "show.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email

    @user.save
    render "show.json.jb"
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render "show.json.jb"
  end
end

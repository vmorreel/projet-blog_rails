class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:index, :new]

  def show
    load_user
  end

  def edit
    load_user
  end

  def update
    load_user
    if @user.update_attributes(user_params)
      redirect_to[':show']
    else
      redirect_to[':edit']
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to[':index']
    else
      redirect_to[':new']
    end
  end

  def destroy
    load_user
    @user.destroy
    render 'index'
  end

  def user_params
    params[:user].permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end

  protected
  def load_user
    @user = User.find params[:id]
  end
end

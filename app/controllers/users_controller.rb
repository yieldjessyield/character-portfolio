class UsersController < ApplicationController
skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    byebug
    @user = User.find(params[:id])
    @games = @user.games
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def user_params
      params.require('user').permit(:name, :password)
    end

end

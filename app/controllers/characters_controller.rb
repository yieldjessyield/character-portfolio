class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = session[:user_id]

    if @character.save
      redirect_to @character
    else
      byebug
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def character_params
    params.require(:character).permit(:name, :commando, :witch, :hacker)
  end

end

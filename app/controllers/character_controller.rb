class CharacterController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
  end

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end


  private

  def character_params
    params.require(:character).permit(:character)
  end
end

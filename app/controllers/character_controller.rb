class CharacterController < ApplicationController
  before_action :set_character, only: [:destroy, :confirm, :edit, :show, :update]

  def index
    chars = Character.all
    @characters = chars.sort_by {|c| c.name}
  end

  def new
    @character = Character.new
  end

  def show
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @character.update(character_params)
      redirect_to @character
    else
      render 'edit'
    end
  end

  def confirm
  end

  def destroy
    if @character.destroy
      redirect_to '/'
    else
      render @character
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :level, :job, :race, :description, :spells)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end

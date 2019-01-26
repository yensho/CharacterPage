class CharacterController < ApplicationController
  before_action :set_character, only: [:destroy, :confirm, :edit, :show, :update]

  # GET /character main page
  def index
    chars = Character.all
    @characters = chars.sort_by {|c| c.name}
  end

  # GET /character/new Start new character
  def new
    @character = Character.new
  end

  # GET /character/:id Show details of a specific character
  def show
  end

  # POST /character Build/add new character
  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end

  # GET /character/:id/edit Start to make changes to character
  def edit
  end

  # POST /character/:id Apply update to character
  def update
    if @character.update(character_params)
      redirect_to @character
    else
      render 'edit'
    end
  end

  # GET /character/:id/confirm Confirm that you want to delete the character
  def confirm
  end

  # DELETE /character/:id Destorys the character
  def destroy
    if @character.destroy
      redirect_to '/'
    else
      render @character
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :level, :job, :race, :description, :spells, :str, :dex, :con, :int, :wis, :cha)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end

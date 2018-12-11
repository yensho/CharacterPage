class CharacterController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
  end

  def create
  end

end

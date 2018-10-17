class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    render 'home/index'
  end

  def create
    binding.pry
    @game = Game.create(state: params[:state])
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { json: @game}
    end

  end

  def show
    render 'home/index'
  end

  def update
    render 'home/index'
  end




end

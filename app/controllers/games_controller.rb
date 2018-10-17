class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    render 'home/index'
  end

  def create
    @game = Game.create(state: params[:state])
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render json: @game, status: 201}
    end

  end

  def show
    binding.pry
    render 'home/index'
  end

  def update
    render 'home/index'
  end




end

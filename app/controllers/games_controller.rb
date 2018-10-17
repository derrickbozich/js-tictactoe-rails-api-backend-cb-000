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
    @game = Game.find_by_id(params[:id])
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render json: @game, status: 200}
    end
  end

  def update
    render 'home/index'
  end




end

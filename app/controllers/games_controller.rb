class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    binding.pry
    @games = Game.all
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render json: @games, status: 200}
    end
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
    @game = Game.find_by_id(params[:id])
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render json: @game, status: 200}
    end
  end

  def update
    @game = Game.find_by_id(params[:id])
    @game.update(state: params[:state])
    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render json: @game, status: 200}
    end
  end




end

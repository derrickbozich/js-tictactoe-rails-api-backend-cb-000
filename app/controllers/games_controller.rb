class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    render 'home/index'
  end

  def create
    binding.pry
    render 'home/index'
  end

  def show
    render 'home/index'
  end

  def update
    render 'home/index'
  end


end

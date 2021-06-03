class BottlesController < ApplicationController
  before_action :set_bottle, only: [:show] 

  def index
    if params[:query].present?
      @bottles = Bottle.search(params[:query])
    else
      @bottles = Bottle.all
    end
    @stock = Stock.new
  end

  def show
    @stock = Stock.where('cellar_id = ?', current_user.cellar.id)
    @in_cave = current_user.cellar.bottles
  end

  private

  def set_bottle
    @bottle = Bottle.find(params[:id])
  end
end

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

  # def filter_wine_type
  #   params.require(:wine_type).permit(:name)
  # end 

end


# @rouges = Bottle.where(wine_type_id: 1)
# @blancs = Bottle.where(wine_type_id: [2,3,4])
# @roses = Bottle.where(wine_type_id: [5,6])
# @petillantc= Bottle.where(wine_type_id: [7,8])

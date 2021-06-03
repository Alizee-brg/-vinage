class BottlesController < ApplicationController
  before_action :set_bottle, only: [:show] 

  def index
    if params[:query].present?
      @bottles = Bottle.search(params[:query])
    else
      @bottles = Bottle.all
    end
  end

  def show
  end

  private

  def set_bottle
    @bottle = Bottle.find(params[:id])
  end
end

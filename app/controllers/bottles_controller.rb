class BottlesController < ApplicationController
  before_action :set_bottle, only: [:show]

  def index
    @bottles = Bottle.all
  end

  def show
  end

  private

  def set_bottle
    @bottle = Bottle.find(params[:id])
  end

end

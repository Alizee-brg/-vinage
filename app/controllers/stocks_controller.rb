class StocksController < ApplicationController

  def create
    if Stock.find_by(bottle_id: params[:bottle_id]).present?
      @stock = Stock.find_by(bottle_id: params[:bottle_id])
      @stock.update(quantity: @stock.quantity + 1)
    else 
      @stock = Stock.new
      @stock.cellar = current_user.cellar
      @stock.bottle = Bottle.find(params[:bottle_id])
      @stock.quantity = 1
    end
    
    if @stock.save
      redirect_to cellars_show_path(@stock.cellar)
    end
  end

  def update
    @stock = Stock.find(params[:id])
    if @stock.update(stocks_params)
      redirect_to cellars_show_path(@stock.cellar)
    else
      redirect_to bottle_path(params[:bottle_id])
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    redirect_to cellars_show_path(@cellar)
  end

  private

  def stocks_params
    params.require(:stock).permit(:bottle_id, :quantity)
  end
end

class StocksController < ApplicationController

  def create
    @stock = Stock.new(stocks_params)
    @stock.user = current_user
    if @stock.save!
      redirect_to cellar_path
    end
  end
  def update
    @stock = Stock.find(params[:id])
    if @stock.update!(stock_params)
      redirect_to cellar_path
    end
  end

  private

  def stocks_params
    params.require(:stocks).permit(:quantity)
  end
end

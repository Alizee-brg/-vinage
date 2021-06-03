class CellarsController < ApplicationController
  def show
    @cellar = current_user.cellar
    @bottles_nb = current_user.my_wine_types.values.sum
  end
end

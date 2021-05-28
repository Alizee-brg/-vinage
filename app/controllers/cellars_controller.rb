class CellarsController < ApplicationController
  def show
    @cellar = current_user.cellar
  end
end

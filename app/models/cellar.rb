class Cellar < ApplicationRecord
  belongs_to :user
  has_many :stocks
  has_many :bottles, through: :stocks

  def count_quantity
    count = 0
    self.stocks.each { |stock| stock.quantity > 0 ? count += stock.quantity : count += 0 }
    count
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cellar
  after_create :create_cellar

  def create_cellar
    Cellar.create(user: self)
  end

  def my_wine_types
    stocks_by_type = self.cellar.stocks.group_by do |stock|
      stock.bottle.wine_type.name
    end
    stocks_by_type.map do |type, stocks|
      quantity = stocks.map { |stock| stock.quantity }.sum
      [type, quantity]
    end.to_h
  end
end

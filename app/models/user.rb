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
    stocks_by_type = {}
    stocks_by_type_inter = self.cellar.stocks.group_by do |stock|
      if stock.quantity > 0
        stock.bottle.wine_type.name
      end
    end
    stocks_by_type_inter.map do |type, stocks|
      quantity = 0
      stocks.each do |stock|
        quantity += stock.quantity
      end
      stocks_by_type[type] = quantity
    end
    stocks_by_type = stocks_by_type.to_h
    stocks_by_type.delete(nil)
    stocks_by_type
  end
end

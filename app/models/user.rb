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
    quantities = cellar.stocks.group_by(&:quantity).keys
    wine_types = cellar.stocks.map do |stock|
      stock.bottle.wine_type.name
    end
    Hash[wine_types.zip quantities]
  end
end

class Cellar < ApplicationRecord

  has_many :stocks
  has_many :bottles, through: :stocks
end

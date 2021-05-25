class Cellar < ApplicationRecord
  belongs_to :user
  has_many :stocks
  has_many :bottles, through: :stocks
end

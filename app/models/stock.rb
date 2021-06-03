class Stock < ApplicationRecord
  belongs_to :cellar
  belongs_to :bottle
  validates_numericality_of :quantity, greater_than_or_equal_to: 0, only_integer: true
end

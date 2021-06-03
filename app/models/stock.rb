class Stock < ApplicationRecord
  belongs_to :cellar
  belongs_to :bottle
  default_scope {order(updated_at: :desc)}
  validates_numericality_of :quantity, greater_than_or_equal_to: 0, only_integer: true
end

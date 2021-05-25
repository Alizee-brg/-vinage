class Stock < ApplicationRecord
  belongs_to :cellar
  belongs_to :bottle
end

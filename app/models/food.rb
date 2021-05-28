class Food < ApplicationRecord
   has_many :associations
   has_many :bottles, through: :associations
end

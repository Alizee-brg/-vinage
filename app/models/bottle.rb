class Bottle < ApplicationRecord
  belongs_to :wine_type
  belongs_to :region
  belongs_to :grape
  has_many :stocks
  has_many :foods, through: :association
end

class Food < ApplicationRecord
   belongs_to :bottle, through: :association

end

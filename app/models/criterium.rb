class Criterium < ApplicationRecord
  belongs_to :item
  
  has_many :ratings
end

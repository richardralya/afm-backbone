class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :criterium
  
end

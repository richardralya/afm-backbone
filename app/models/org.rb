class Org < ApplicationRecord
  belongs_to :channel
  
  has_many :users
  has_many :topics 
end

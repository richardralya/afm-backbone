class Item < ApplicationRecord  
  belongs_to :user
  belongs_to :topic
  
  has_many :criteria
  has_many :ratings, through: :criteria
end

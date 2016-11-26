class User < ApplicationRecord
  belongs_to :channel  
  belongs_to :org
  
  has_many :topics
  has_many :items
  has_many :ratings, through: :items
  validates :auth_type, :length => { :minimum => 2, :maximum => 10}
end

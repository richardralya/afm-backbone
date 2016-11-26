class Topic < ApplicationRecord
  belongs_to :channel
  belongs_to :org
  belongs_to :user
  
  has_many :items
end

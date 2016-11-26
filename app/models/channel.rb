class Channel < ApplicationRecord
  has_many :users
  has_many :orgs
  has_many :topics
end

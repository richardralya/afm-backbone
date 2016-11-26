class Channel < ApplicationRecord
  has_many :orgs
  has_many :topics
end

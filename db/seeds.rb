# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Channel.create(name: 'unsensational!', status: 1)
  Org.create(channel_id: 1, name: 'unsensational!', status: 1)
  User.create(name: 'richard', email: 'richardralya@gmail.com', language: 'en', timezone: -10, auth_type: 'google', rank_boost: 100, org_id: 1,  status: 1)
  Topic.create(channel_id: 1, org_id: 1, user_id: 1, name: 'unsensational!', topic_type: 'article', status: 1)
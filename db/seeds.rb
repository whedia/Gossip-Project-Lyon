# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# resetting tables before creating everything


User.destroy_all
Comment.destroy_all
Gossip.destroy_all

a = User.create!(first_name: "Jeremy", last_name: "Marc", email: "jojo@gmail.com", password: "foobar")


# creating fake users
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
  )
end

# creating fake gossips
20.times do
  Gossip.create(
    user_id: rand(User.first.id..User.last.id), # random gossip amongst the previously created ones
    title: Faker::Quote.singular_siegler,
    content: Faker::ChuckNorris.fact,

  )
end

# creating fake comments 
20.times do
  Comment.create(
    content: Faker::Quote.famous_last_words,
    user_id: rand(User.first.id..User.last.id), # random user amongst the previously created ones
    gossip_id: rand(Gossip.first.id..Gossip.last.id) # random gossip amongst the previously created ones
  )
end
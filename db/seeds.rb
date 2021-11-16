# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


puts "Cleaning database..."
Machine.destroy_all
User.destroy_all

puts "Creating database..."

margot = User.create(first_name: "Margot", last_name: "Liard", email: "margot@gmail.com", password: "password")
camille = User.create(first_name: "Camille", last_name: "Breillot", email: "camille@gmail.com", password: "password")
sophie = User.create(first_name: "Sophie", last_name: "Callault", email: "sophie@gmail.com", password: "password")
aymeric = User.create(first_name: "Aymeric", last_name: "Payen", email: "aymeric@gmail.com", password: "password")

Machine.create(user: margot, name: "Trump election", country: "US", price: 200, period_century: 21, period_specific: 2016, details: "Election of the worst president!" )
Machine.create(user: camille, name: "Hippies in 70s", country: "US", price: 450, period_century: 20, period_specific: 1975, details: "Live like a hippy!" )
Machine.create(user: sophie, name: "Party with Louis XIV", country: "FR", price: 10_000, period_century: 17, period_specific: 1690, details: "Gala au Chateau de Versailles!" )
Machine.create(user: aymeric, name: "End of World War II", country: "DE", price: 100, period_century: 20, period_specific: 1945, details: "Celebrating the end of Hitler!" )

puts "Finished!"

# require 'faker'

# puts 'Creating 5 fake users...'
# 5.times do
#   user = User.new(
#     first_name:  Faker::Name.first_name,
#     last_name:   Faker::Name.last_name,
#     email:       Faker::Internet.email,
#     password:    Faker::Lorem.characters(number: 10)
#   )
#   user.save!
# end
# puts 'Finished!'

# puts 'Creating 5 fake machines...'
# 5.times do
#   machine = Machine.new(
#     name:            Faker::Name.first_name,
#     details:         Faker::Lorem.sentence(word_count: 5),
#     country:         Faker::Address.country,
#     price:           Faker::Number.within(range: 1..99999),
#     period_century:  Faker::Number.within(range: 0..50),
#     period_specific: Faker::Number.within(range: 1..5000),
#   )
#   machine.save!
# end
# puts 'Finished!'

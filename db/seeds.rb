# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Machine.destroy_all
User.destroy_all

puts "Creating database..."

margot = User.create(first_name: "Margot", last_name: "Liard", email: "margot@gmail.com", password: "password")
camille = User.create(first_name: "Camille", last_name: "Breillot", email: "camille@gmail.com", password: "password")
sophie = User.create(first_name: "Sophie", last_name: "Callault", email: "sophie@gmail.com", password: "password")
aymeric = User.create(first_name: "Aymeric", last_name: "Payen", email: "aymeric@gmail.com", password: "password")

trump = Machine.create(user: margot, name: "Trump election", place: "US", price: 200, period_century: 21, period_specific: 2016, details: "Election of the worst president!" )
file = URI.open("https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/international/premiers-resultats-premieres-reactions-suivez-en-direct-les-elections-americaines-entre-donald-trump-et-hillary-clinton-2894840/29725457-262-fre-FR/Trump-a-deja-rendez-vous-au-Mexique.jpg")
trump.photos.attach(io: file, filename: 'file1.jpeg', content_type: 'image/jpeg')
file2 = URI.open("https://media.lesechos.com/api/v1/images/view/5faf80ba3e45466f4464b806/1280x720/0604261491710-web-tete.jpg")
trump.photos.attach(io: file2, filename: 'file2.jpeg', content_type: 'image/jpeg')
file3 = URI.open("https://d2v9ipibika81v.cloudfront.net/uploads/sites/50/2016/06/whitehouse.jpg")
trump.photos.attach(io: file3, filename: 'file3.jpeg', content_type: 'image/jpeg')

hippy = Machine.create(user: camille, name: "Hippies in 70s", place: "US", price: 450, period_century: 20, period_specific: 1975, details: "Live like a hippy!" )
file4 = URI.open("https://images.ladepeche.fr/api/v1/images/view/6104404bd286c218ec5d69c7/large/image.jpg?v=1")
hippy.photos.attach(io: file4, filename: 'file4.jpeg', content_type: 'image/jpeg')
file5 = URI.open("https://www.generations-plus.ch/sites/default/files/styles/image_principal_article/public/article/field/image/nom_ketane_race_batard_croisement_entre_un_boxer_et_un_labrador_sexe_male_age_10_ans_5.png?itok=eSxvCtVl")
hippy.photos.attach(io: file5, filename: 'file5.jpeg', content_type: 'image/jpeg')
file6 = URI.open("https://i.cbc.ca/1.5245615.1565722610!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/woodstock.jpg")
hippy.photos.attach(io: file6, filename: 'file6.jpeg', content_type: 'image/jpeg')

louis = Machine.create(user: sophie, name: "Party with Louis XIV", place: "FR", price: 1000, period_century: 17, period_specific: 1690, details: "Gala au Chateau de Versailles!" )
file7 = URI.open("https://www.toutelatele.com/IMG/arton100227.jpg")
louis.photos.attach(io: file7, filename: 'file7.jpeg', content_type: 'image/jpeg')
file8 = URI.open("https://resize-elle.ladmedia.fr/rcrop/1098,768/img/var/plain_site/storage/images/loisirs/series/versailles-on-a-vu-la-nouvelle-serie-de-canal-3011359/57681433-1-fre-FR/Versailles-on-a-vu-la-nouvelle-serie-de-Canal.jpg")
louis.photos.attach(io: file8, filename: 'file8.jpeg', content_type: 'image/jpeg')
file9 = URI.open("https://i.dailymail.co.uk/1s/2019/05/28/11/14047470-7077793-image-a-97_1559040638452.jpg")
louis.photos.attach(io: file9, filename: 'file9.jpeg', content_type: 'image/jpeg')

war = Machine.create(user: aymeric, name: "End of World War II", place: "DE", price: 100, period_century: 20, period_specific: 1945, details: "Celebrating the end of Hitler!" )
file10 = URI.open("https://www.historyonthenet.com/wp-content/uploads/2014/11/main-667816.jpg")
war.photos.attach(io: file10, filename: 'file10.jpeg', content_type: 'image/jpeg')
file11 = URI.open("https://ogden_images.s3.amazonaws.com/www.lockhaven.com/images/2020/05/07164822/express-VE-1100x733.jpg")
war.photos.attach(io: file11, filename: 'file11.jpeg', content_type: 'image/jpeg')
file12 = URI.open("https://www.thoughtco.com/thmb/8ECQKF4hNFwia-U3uA8TXBPsZbk=/4151x2335/smart/filters:no_upscale()/new-yorkers-celebrate-v-e-day-514877528-5b93085c46e0fb0025701c7d.jpg")
war.photos.attach(io: file12, filename: 'file12.jpeg', content_type: 'image/jpeg')

#booking1 = Booking.create!(departure_date: "15/12/2021", arrival_date: "31/12/2021", booking_price: 18_000,
 #                         booking_confirmed: true, user_id: margot.id, machine_id: war.id)

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

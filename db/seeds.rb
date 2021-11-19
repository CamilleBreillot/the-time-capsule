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

puts "Users ok..."

trump = Machine.create(user_id: margot.id, name: "Trump election", place: "US", price: 200, period_century: 21, period_specific: 2016, details: "Election of the worst president!" )
file = URI.open("https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/international/premiers-resultats-premieres-reactions-suivez-en-direct-les-elections-americaines-entre-donald-trump-et-hillary-clinton-2894840/29725457-262-fre-FR/Trump-a-deja-rendez-vous-au-Mexique.jpg")
trump.photos.attach(io: file, filename: 'file1.jpeg', content_type: 'image/jpeg')
file2 = URI.open("https://media.lesechos.com/api/v1/images/view/5faf80ba3e45466f4464b806/1280x720/0604261491710-web-tete.jpg")
trump.photos.attach(io: file2, filename: 'file2.jpeg', content_type: 'image/jpeg')
file3 = URI.open("https://d2v9ipibika81v.cloudfront.net/uploads/sites/50/2016/06/whitehouse.jpg")
trump.photos.attach(io: file3, filename: 'file3.jpeg', content_type: 'image/jpeg')

hippy = Machine.create(user_id: camille.id, name: "Hippies in 70s", place: "BR", price: 450, period_century: 20, period_specific: 1975, details: "Live like a hippy!" )
file4 = URI.open("https://images.ladepeche.fr/api/v1/images/view/6104404bd286c218ec5d69c7/large/image.jpg?v=1")
hippy.photos.attach(io: file4, filename: 'file4.jpeg', content_type: 'image/jpeg')
file5 = URI.open("https://www.generations-plus.ch/sites/default/files/styles/image_principal_article/public/article/field/image/nom_ketane_race_batard_croisement_entre_un_boxer_et_un_labrador_sexe_male_age_10_ans_5.png?itok=eSxvCtVl")
hippy.photos.attach(io: file5, filename: 'file5.jpeg', content_type: 'image/jpeg')
file6 = URI.open("https://i.cbc.ca/1.5245615.1565722610!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/woodstock.jpg")
hippy.photos.attach(io: file6, filename: 'file6.jpeg', content_type: 'image/jpeg')

louis = Machine.create(user_id: sophie.id, name: "Party with Louis XIV", place: "FR", price: 1000, period_century: 17, period_specific: 1690, details: "Gala in Chateau de Versailles!" )
file7 = URI.open("https://www.toutelatele.com/IMG/arton100227.jpg")
louis.photos.attach(io: file7, filename: 'file7.jpeg', content_type: 'image/jpeg')
file8 = URI.open("https://resize-elle.ladmedia.fr/rcrop/1098,768/img/var/plain_site/storage/images/loisirs/series/versailles-on-a-vu-la-nouvelle-serie-de-canal-3011359/57681433-1-fre-FR/Versailles-on-a-vu-la-nouvelle-serie-de-Canal.jpg")
louis.photos.attach(io: file8, filename: 'file8.jpeg', content_type: 'image/jpeg')
file9 = URI.open("https://i.dailymail.co.uk/1s/2019/05/28/11/14047470-7077793-image-a-97_1559040638452.jpg")
louis.photos.attach(io: file9, filename: 'file9.jpeg', content_type: 'image/jpeg')

hiroshima = Machine.create(user_id: sophie.id, name: "Atomic Bombings of Hiroshima", place: "JP", price: 500, period_century: 20, period_specific: 1945, details: "Go back to the final year of World War II ans assist to the costly invasion of the Japanese mainland." )
file10 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Atomic_bombing_of_Japan.jpg/2880px-Atomic_bombing_of_Japan.jpg")
hiroshima.photos.attach(io: file10, filename: 'file10.jpeg', content_type: 'image/jpeg')
file11 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a0/Hiroshima_10km.jpg")
hiroshima.photos.attach(io: file11, filename: 'file11.jpeg', content_type: 'image/jpeg')
file12 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Boeing_B-29A-45-BN_Superfortress_44-61784_6_BG_24_BS_-_Incendiary_Journey.jpg/2560px-Boeing_B-29A-45-BN_Superfortress_44-61784_6_BG_24_BS_-_Incendiary_Journey.jpg")
hiroshima.photos.attach(io: file12, filename: 'file12.jpeg', content_type: 'image/jpeg')

concert = Machine.create(user_id: sophie.id, name: "Spectacular Prince Concert", place: "UK", price: 2000, period_century: 21, period_specific: 2004, details: "Prince Spectacular Concert" )
file13 = URI.open("https://resize-parismatch.lanmedia.fr/r/625,417,forcex,center-middle/img/var/news/storage/images/paris-match/culture/musique/le-concert-de-prince-complet-en-77-minutes-170246/1859005-1-fre-FR/Le-concert-de-Prince-complet-en-77-minutes.jpg")
concert.photos.attach(io: file13, filename: 'file13.jpeg', content_type: 'image/jpeg')
file14 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHZT0YAQA61nmPKcdaeMgl5uqMNnWHGQYZ8A&usqp=CAU")
concert.photos.attach(io: file14, filename: 'file14.jpeg', content_type: 'image/jpeg')
file15 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJghz3K8CWENsALFghTmu9DBd_30rtCMuuzQ&usqp=CAU")
concert.photos.attach(io: file15, filename: 'file15.jpeg', content_type: 'image/jpeg')

war = Machine.create(user_id: aymeric.id, name: "End of World War II", place: "DE", price: 100, period_century: 20, period_specific: 1945, details: "Celebrating the end of Hitler!" )
file16 = URI.open("https://www.historyonthenet.com/wp-content/uploads/2014/11/main-667816.jpg")
war.photos.attach(io: file16, filename: 'file16.jpeg', content_type: 'image/jpeg')
file17 = URI.open("https://ogden_images.s3.amazonaws.com/www.lockhaven.com/images/2020/05/07164822/express-VE-1100x733.jpg")
war.photos.attach(io: file17, filename: 'file17.jpeg', content_type: 'image/jpeg')
file18 = URI.open("https://www.thoughtco.com/thmb/8ECQKF4hNFwia-U3uA8TXBPsZbk=/4151x2335/smart/filters:no_upscale()/new-yorkers-celebrate-v-e-day-514877528-5b93085c46e0fb0025701c7d.jpg")
war.photos.attach(io: file18, filename: 'file18.jpeg', content_type: 'image/jpeg')

foot = Machine.create(user_id: camille.id, name: "World Cup 1998", place: "FR", price: 400, period_century: 20, period_specific: 1998, details: "Celebrating the victory of France over Brasil (3-0)" )
file19 = URI.open("https://static1.purepeople.com/articles/1/21/34/61/@/2883545-equipe-de-france-de-la-coupe-du-monde-19-950x0-3.jpg")
foot.photos.attach(io: file19, filename: 'file19.jpeg', content_type: 'image/jpeg')
file20 = URI.open("https://i.f1g.fr/media/figaro/805x453_crop/2017/12/05/XVM6e755ede-d9ad-11e7-9638-ce79d0d9543a.jpg")
foot.photos.attach(io: file20, filename: 'file20.jpeg', content_type: 'image/jpeg')
file21 = URI.open("https://france3-regions.francetvinfo.fr/image/DG3ATEHmTNaB7MhqPnNFfGvbod8/1200x900/regions/2020/06/09/5edf58d2cf511_coupe_du_monde_de_football_1998-3715101.jpg")
foot.photos.attach(io: file21, filename: 'file21.jpeg', content_type: 'image/jpeg')

prohibition = Machine.create(user_id: camille.id, name: "Prohibition in the 30's", place: "US", price: 300, period_century: 20, period_specific: 1930, details: "Experience parties during prohibition in Chicago!" )
file22 = URI.open("https://frenchmorning.com/wp-content/uploads/2018/05/gatsby-le-magnifique-696x378.jpg?x99009")
prohibition.photos.attach(io: file22, filename: 'file22.jpeg', content_type: 'image/jpeg')
file23 = URI.open("https://www.sortiraparis.com/images/80/1462/393223-paris-accueille-la-plus-grande-soiree-gatsby-defile-mode-1920-2.jpg")
prohibition.photos.attach(io: file23, filename: 'file23.jpeg', content_type: 'image/jpeg')
file24 = URI.open("https://frenchmorning.com/wp-content/uploads/2018/11/great-gatsby-696x366.jpg?x99009")
prohibition.photos.attach(io: file24, filename: 'file24.jpeg', content_type: 'image/jpeg')

martin = Machine.create(user_id: camille.id, name: "Martin Luther King's speech", place: "US", price: 350, period_century: 20, period_specific: 1963, details: "Relive the famous I have a dream speech by MLK in Washington" )
file25 = URI.open("https://images.ctfassets.net/81iqaqpfd8fy/65QIz9qbTw5QZFXaShb5y6/2886bbf85ed0551868c0badbd86416c5/MLK_banner.jpg?h=620&w=1440")
martin.photos.attach(io: file25, filename: 'file25.jpeg', content_type: 'image/jpeg')
file26 = URI.open("https://s.abcnews.com/images/Politics/gty_march_on_washington_martin_luther_king_ll_130819_16x9_1600.jpg")
martin.photos.attach(io: file26, filename: 'file26.jpeg', content_type: 'image/jpeg')
file27 = URI.open("https://www.investopedia.com/thmb/2W-EG94_uhx9ysAJX1Dbj7pTM7s=/680x382/smart/filters:no_upscale()/DMS1.18.19.2-5c45fbd4c9e77c0001264893.jpg")
martin.photos.attach(io: file27, filename: 'file27.jpeg', content_type: 'image/jpeg')

puts "Machines ok..."


booking1 = Booking.create!(departure_date: "15/12/2021", arrival_date: "31/12/2021", booking_price: 18_000,
                          booking_confirmed: true, user_id: margot.id, machine_id: war.id)
booking2 = Booking.create!(departure_date: "15/12/2021", arrival_date: "31/12/2021", booking_price: 18_000,
                          booking_confirmed: true, user_id: aymeric.id, machine_id: louis.id)
booking3 = Booking.create!(departure_date: "15/12/2021", arrival_date: "31/12/2021", booking_price: 18_000,
                          booking_confirmed: true, user_id: sophie.id, machine_id: hippy.id)
booking4 = Booking.create!(departure_date: "15/12/2021", arrival_date: "31/12/2021", booking_price: 18_000,
                          booking_confirmed: true, user_id: camille.id, machine_id: trump.id)

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

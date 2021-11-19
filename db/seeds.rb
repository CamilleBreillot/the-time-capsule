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

mars = Machine.create(user_id: margot.id, name: "Life on Mars (partnership with Stellar)", place: "MG", price: 2000, period_century: 22, period_specific: 2155, details: "Experiencing life on Mars with our descendants, in partnership with Stellar" )
file28 = URI.open("https://static.euronews.com/articles/stories/05/98/20/46/1440x810_cmsv2_b2abb91f-286e-5cd5-a3eb-be7dde5f86e3-5982046.jpg")
mars.photos.attach(io: file28, filename: 'file28.jpeg', content_type: 'image/jpeg')
file29 = URI.open("https://static.bangkokpost.com/media/content/20211012/c1_4111987.jpg")
mars.photos.attach(io: file29, filename: 'file29.jpeg', content_type: 'image/jpeg')
file30 = URI.open("https://cryptonaute.fr/wp-content/uploads/2020/02/2020-02-28_09h17_52.jpg")
mars.photos.attach(io: file30, filename: 'file30.jpeg', content_type: 'image/jpeg')

covid = Machine.create(user_id: aymeric.id, name: "COVID-64", place: "RU", price: 250, period_century: 22, period_specific: 2120, details: "Live the COVID-64 pandemic and its numberless quarantines" )
file31 = URI.open("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202003/coronavirus_mental_health_reut.jpeg?aJFbSXCVDrjkbDaYshCHhDVsx._UFkII&size=770:433")
covid.photos.attach(io: file31, filename: 'file31.jpeg', content_type: 'image/jpeg')
file32 = URI.open("https://www.osce.org/files/imagecache/10_large_gallery/f/images/hires/d/0/461116.jpg?1597935020")
covid.photos.attach(io: file32, filename: 'file32.jpeg', content_type: 'image/jpeg')
file33 = URI.open("https://www.coe.int/documents/18550040/24135798/20200428-Online-First-regional.jpg/0ce96786-160d-ba7d-d874-b89cae70e603")
covid.photos.attach(io: file33, filename: 'file33.jpeg', content_type: 'image/jpeg')

cesar = Machine.create(user_id: margot.id, name: "Roman Empire with Cesar", place: "IT", price: 225, period_century: -1, period_specific: -52, details: "Live the victory of Cesar in Alesia" )
file34 = URI.open("https://www.arretetonchar.fr/wp-content/uploads/2014/04/alain_delon_est_jules_cesar1_portrait_w532-532x330.jpg")
cesar.photos.attach(io: file34, filename: 'file34.jpeg', content_type: 'image/jpeg')
file35 = URI.open("https://i.f1g.fr/media/figarofr/orig/2014/05/19/PHO0559f34e-dccf-11e3-ab1d-365fee0d264d-805x453.jpg")
cesar.photos.attach(io: file35, filename: 'file35.jpeg', content_type: 'image/jpeg')
file36 = URI.open("http://www.slate.fr/sites/default/files/styles/1060x523/public/paris-2775427_1920.jpg")
cesar.photos.attach(io: file36, filename: 'file36.jpeg', content_type: 'image/jpeg')

cleopatre = Machine.create(user_id: aymeric.id, name: "Ancient Egypt with Cleopatra", place: "EG", price: 850, period_century: -10, period_specific: -1100, details: "Experience life in Ancient Egypt, go see the pyramids and meet Cleopatra" )
file37 = URI.open("https://i.pinimg.com/originals/ea/90/f2/ea90f21f3173a25f9ef69913c615f8b4.jpg")
cleopatre.photos.attach(io: file37, filename: 'file37.jpeg', content_type: 'image/jpeg')
file38 = URI.open("https://medias.lavie.fr/api/v1/images/view/5f71a685d286c26fc849bdd8/width_1000/image.jpg")
cleopatre.photos.attach(io: file38, filename: 'file38.jpeg', content_type: 'image/jpeg')
file39 = URI.open("https://i.ytimg.com/vi/hO1tzmi1V5g/maxresdefault.jpg")
cleopatre.photos.attach(io: file39, filename: 'file39.jpeg', content_type: 'image/jpeg')

sissi = Machine.create(user_id: margot.id, name: "Tea Time with Sissi", place: "AT", price: 550, period_century: 19, period_specific: 1845, details: "Relax with the empress Sissi and have lots of cakes" )
file40 = URI.open("https://assets.afcdn.com/story/20191205/2034507_w960h720c1cx398cy369cxt0cyt0cxb960cyb720.jpg")
sissi.photos.attach(io: file40, filename: 'file40.jpeg', content_type: 'image/jpeg')
file41 = URI.open("https://assets.afcdn.com/story/20190722/2017198_w3872h2904c1cx2522cy1272cxt1095cyt0cxb3872cyb2592.jpg")
sissi.photos.attach(io: file41, filename: 'file41.jpeg', content_type: 'image/jpeg')
file42 = URI.open("https://static1.chateauversailles-spectacles.fr/events/1/22/71/@/les-f-c3-aates-galantes-c2-a9luc-morel-768x545px-event_item-1.jpg")
sissi.photos.attach(io: file42, filename: 'file42.jpeg', content_type: 'image/jpeg')

robot = Machine.create(user_id: margot.id, name: "Play with Robots", place: "CN", price: 1250, period_century: 22, period_specific: 2199, details: "Meet robots from the future and play around" )
file43 = URI.open("https://cdn-mds.pickx.be/NewsFolder/w-700_h-500_s-1/1808151_62426_162.png")
robot.photos.attach(io: file43, filename: 'file43.jpeg', content_type: 'image/jpeg')
file44 = URI.open("https://wallpaperaccess.com/full/1224636.jpg")
robot.photos.attach(io: file44, filename: 'file44.jpeg', content_type: 'image/jpeg')
file45 = URI.open("https://www.dynamique-mag.com/wp-content/uploads/0cb16ff4389763bb7cbd7e227e1f87d8.jpg")
robot.photos.attach(io: file45, filename: 'file45.jpeg', content_type: 'image/jpeg')

town = Machine.create(user_id: aymeric.id, name: "Visit Luxembourg eco-city", place: "LU", price: 980, period_century: 22, period_specific: 2117, details: "Visit an eco-city of the future!" )
file46 = URI.open("https://www.thesmartcityjournal.com/images/ecocities1.jpg")
town.photos.attach(io: file46, filename: 'file46.jpeg', content_type: 'image/jpeg')
file47 = URI.open("http://img.over-blog-kiwi.com/0/83/11/08/20150403/ob_e9e2d0_1xnqnqf.jpg")
town.photos.attach(io: file47, filename: 'file47.jpeg', content_type: 'image/jpeg')
file48 = URI.open("http://cdn.cnn.com/cnnnext/dam/assets/210107163426-04-tengah-singapore-restricted.jpg")
town.photos.attach(io: file48, filename: 'file48.jpeg', content_type: 'image/jpeg')

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

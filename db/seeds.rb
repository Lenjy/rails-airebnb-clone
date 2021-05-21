# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

require_relative '../app/models/category'
require_relative '../app/models/shoe'


Category.destroy_all
Location.destroy_all
Shoe.destroy_all
User.destroy_all

Category.create(name: "Sport")
Category.create(name: "Sneakers")
Category.create(name: "Slippers")
Category.create(name: "Derbies")
Category.create(name: "Richelieu")
Category.create(name: "Sandales")
Category.create(name: "Mules")
Category.create(name: "Boots")
Category.create(name: "Bottines")
# Category.create(name: "Aerobic Shoes")
# Category.create(name: "Airport Friendly Shoes")
# Category.create(name: "Aldo Men's Shoes")
# Category.create(name: "Asics Shoes")
# Category.create(name: "Athletic Shoes")
# Category.create(name: "Ballet Shoes")
# Category.create(name: "Bandolino Boots")
# Category.create(name: "Beige Pumps")
# Category.create(name: "Black Ankle Boots")
# Category.create(name: "Black Boots")
# Category.create(name: "Black Heels")
# Category.create(name: "Black Hiking Shoes")
# Category.create(name: "Black Pumps")
# Category.create(name: "Black Satin Pumps")
# Category.create(name: "Black Slingback Shoes")
# Category.create(name: "Black Strappy Heels")
# Category.create(name: "Black Wide Calf Boots")
# Category.create(name: "Blue Pumps")
# Category.create(name: "Boat Shoes")
# Category.create(name: "Born Shoes")
# Category.create(name: "Booties")
# Category.create(name: "Boys Shoes")
# Category.create(name: "Bridal Kitten Heels")
# Category.create(name: "Brown Boots")
# Category.create(name: "Brown Leather Boots")
# Category.create(name: "Brown Oxford Heels")
# Category.create(name: "Brown Riding Boots")
# Category.create(name: "Buckle Boots")
# Category.create(name: "Burberry Rain Boots")
# Category.create(name: "Burgundy Shoes")
# Category.create(name: "Calf Boots")
# Category.create(name: "Calvin Klein Heels")
# Category.create(name: "Camper Shoes")
# Category.create(name: "Canvas Shoes")
# Category.create(name: "Canvas Slip On Shoes")
# Category.create(name: "Cap Toe Shoes")
# Category.create(name: "Chaco Boots")
# Category.create(name: "Chef Shoes")
# Category.create(name: "Chukka Boots")
# Category.create(name: "Climbing Shoes")
# Category.create(name: "Combat Boots")
# Category.create(name: "Comfort Shoes")
# Category.create(name: "Cowboy Boots")
# Category.create(name: "Cycling Shoes")
# Category.create(name: "Dan Post Boots")
# Category.create(name: "Dansko Shoes")
# Category.create(name: "Deck Shoes")
# Category.create(name: "Denim Shoes")
# Category.create(name: "Designer Evening Shoes")
# Category.create(name: "Designer Shoes")
# Category.create(name: "Diabetic Shoes")
# Category.create(name: "Dress Shoes")
# Category.create(name: "Drivers Shoes")
# Category.create(name: "Durango Boots")
# Category.create(name: "Earth Boots")
# Category.create(name: "Eastland Shoes")
# Category.create(name: "Eco Friendly Shoes")
# Category.create(name: "Electrical Boots")
# Category.create(name: "Emu Boots")
# Category.create(name: "Equestrian Boots")
# Category.create(name: "Extra Wide Calf Boots")
# Category.create(name: "Fashion Boots")
# Category.create(name: "Fashion Shoes")
# Category.create(name: "Fitness Shoes")
# Category.create(name: "Flat Ankle Boots")
# Category.create(name: "Flat Shoes")
# Category.create(name: "Fleece Lined Boots")
# Category.create(name: "Formal Shoes")
# Category.create(name: "Fringe Boots")
# Category.create(name: "Frye Boots")
# Category.create(name: "Fur Boots")
# Category.create(name: "Furry Boots")
# Category.create(name: "Gladiator Heels")
# Category.create(name: "Glitter Pumps")
# Category.create(name: "Glitter Shoes")
# Category.create(name: "Gold Heels")
# Category.create(name: "Gold Shoes")
# Category.create(name: "Golf Shoes")
# Category.create(name: "Grey Ankle Boots")
# Category.create(name: "Guess Boots")
# Category.create(name: "Gym Shoes")
# Category.create(name: "Harness Boots")
# Category.create(name: "High Heel Winter Boots")
# Category.create(name: "High Top Shoes")
# Category.create(name: "Hospital Shoes")
# Category.create(name: "Hunter Boots")
# Category.create(name: "Infant Shoes")
# Category.create(name: "Jelly Shoes")
# Category.create(name: "Keen Hiking Boots")
# Category.create(name: "Khaki Boots")
# Category.create(name: "Kitten Heels")
# Category.create(name: "Lace Up Boots")
# Category.create(name: "Leather Boots")
# Category.create(name: "Light Up Shoes")
# Category.create(name: "Low Heel Boots")
# Category.create(name: "Lug Boots")
# Category.create(name: "Lug Sole Boots")
# Category.create(name: "Mary Jane Shoes")
# Category.create(name: "Matisse Boots")
# Category.create(name: "Michael Kors")
# Category.create(name: "Mens Boots")
# Category.create(name: "Minnetonka Boots")
# Category.create(name: "Moc Toe Shoes")
# Category.create(name: "Motorcycle Boots")
# Category.create(name: "Mules")
# Category.create(name: "Narrow Size Boots")
# Category.create(name: "Neutral Pronation Shoes")
# Category.create(name: "Nubuck Shoes")
# Category.create(name: "Nurse Shoes")
# Category.create(name: "Orthotic Shoes")
# Category.create(name: "Over The Knee Boots")
# Category.create(name: "Pewter Heels")
# Category.create(name: "Pewter Shoes")
# Category.create(name: "Pink Pumps")
# Category.create(name: "Platform Shoes")
# Category.create(name: "Polo Boots")
# Category.create(name: "Prom Shoes")
# Category.create(name: "Purple Pumps")
# Category.create(name: "Red Heels")
# Category.create(name: "Red Kitten Heels")
# Category.create(name: "Red Knee Boots")
# Category.create(name: "Red Leather Boots")
# Category.create(name: "Red Mary Jane Shoes")
# Category.create(name: "Red Patent Leather Pumps")
# Category.create(name: "Red Pumps")
# Category.create(name: "Red Shoes")
# Category.create(name: "Report Shoes")
# Category.create(name: "Retro Shoes")
# Category.create(name: "Rubber Boots")
# Category.create(name: "Rubber Overshoes")
# Category.create(name: "Running Shoes")
# Category.create(name: "Saddle Shoes")
# Category.create(name: "Sailing Shoes")
# Category.create(name: "Satin Shoes")
# Category.create(name: "Seychelles Shoes")
# Category.create(name: "Shearling Boots")
# Category.create(name: "Silver Glitter Pumps")
# Category.create(name: "Silver Heels")
# Category.create(name: "Silver Pumps")
# Category.create(name: "Skateboard Shoes")
# Category.create(name: "Slip On Shoes")
# Category.create(name: "Slipper Boots")
# Category.create(name: "Slouch Boots")
# Category.create(name: "Snow Boots")
# Category.create(name: "Soccer Cleats")
# Category.create(name: "Sorel Boots")
# Category.create(name: "Steel Toe Boots")
# Category.create(name: "Steve Madden Boots")
# Category.create(name: "Strappy Heels")
# Category.create(name: "Stretch Boots")
# Category.create(name: "Studded Boots")
# Category.create(name: "Studded Heels")
# Category.create(name: "Suede Boots")
# Category.create(name: "Suede Pumps")
# Category.create(name: "Summer Shoes")
# Category.create(name: "Tan Boots")
# Category.create(name: "Taupe Wedge Shoes")
# Category.create(name: "Tennis Shoes")
# Category.create(name: "Thigh Boots")
# Category.create(name: "Thigh High Black Boots")
# Category.create(name: "Thigh High Boots")
# Category.create(name: "Toddler Shoes")
# Category.create(name: "Track Shoes")
# Category.create(name: "Trail Shoes")
# Category.create(name: "Two Tone Riding Boots")
# Category.create(name: "Uggs")
# Category.create(name: "Vegan Shoes")
# Category.create(name: "Vegetarian Shoes")
# Category.create(name: "Water Shoes")
# Category.create(name: "Waterproof Boots")
# Category.create(name: "Waterproof Shoes")
# Category.create(name: "Wedge Boots")
# Category.create(name: "Western Boots")
# Category.create(name: "White Strap Heels")
# Category.create(name: "Wide Boots")
# Category.create(name: "Wide Calf Boots")
# Category.create(name: "Wide Shoes")
# Category.create(name: "Winter Boots")
# Category.create(name: "Womens Boots")
# Category.create(name: "Work Shoes")
# Category.create(name: "Wrestling Shoes")
# Category.create(name: "Zip Up Boots")

puts "Created #{Category.all.size} categories from seeds.rb"

basil = User.create(first_name: "Basil", last_name: "Lizotte", address: "4 rue Victor Masse", telephone_number: "0675674509", email: "basil.lizotte@gmail.com", password: "Lewagon 2021", password_confirmation: "Lewagon 2021")
arthur = User.create(first_name: "Arthur", last_name: "Manguin", address: "20 rue Victor Masse", telephone_number: "0675674512", email: "arthur@gmail.com", password: "Lewagon 2021", password_confirmation: "Lewagon 2021")


photo_basil = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQE3w6qncy7Plw/profile-displayphoto-shrink_400_400/0/1620132183102?e=1626912000&v=beta&t=SAQo11fB-mb9HerJn-MjDj96KS6ozEEMJRVnEyLUZrU')
basil.photo.attach(io: photo_basil, filename: 'basil_demo.jpg', content_type: 'image/jpg')

photo_arthur = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQELhBcLohE_3g/profile-displayphoto-shrink_400_400/0/1517456385177?e=1626912000&v=beta&t=TZYnAlkO6MwZR840tiSaZmY5t5CcFaAVWzxLaT8Zqm8')
arthur.photo.attach(io: photo_arthur, filename: 'arthur_demo.jpg', content_type: 'image/jpg')

puts "Created #{User.all.size} user from seeds.rb"

# 15.times {
#   Shoe.create(
#     user_id: basil.id,
#     title: "Cool shoe from seeds.rb",
#     description: "This shoe is really cool, it's so nice and comes from seeds.rb",
#     brand: ["Nike", "Adidas", "Reebok", "Asics", "Clarks"].sample,
#     model: "whatever",
#     purchasing_date: Date.new(),
#     color: ['red', 'yellow', 'green', 'white'].sample,
#     daily_pricing: rand(4..50),
#     gender: ["Male", "Female", "For both"].sample,
#     shoe_size: rand(34..50)
#   )
# }


stan_smith = Shoe.create(
  user_id: basil.id,
  title: "Stan smith from the 70s",
  description: "This shoe is really cool, I bought it in the 1995, it's an old model",
  brand: "Adidas",
  model: "Stan Smith",
  purchasing_date: Date.new(),
  color: "White",
  daily_pricing: 3,
  gender: "For both",
  shoe_size: 39
)

crocs = Shoe.create(
  user_id: arthur.id,
  title: "Fancy crocs for house-cleaning",
  description: "I love my crocs and want to share them with people",
  brand: "Crocs",
  model: "Classic Clog",
  purchasing_date: Date.new(),
  color: "Green",
  daily_pricing: 5,
  gender: "For both",
  shoe_size: 43
)

clarks = Shoe.create(
  user_id: basil.id,
  title: "Trendy Clarks shoes - a bit dirty",
  description: "Good general condition",
  brand: "Clarks",
  model: "Desert boot",
  purchasing_date: Date.new(),
  color: "Beige",
  daily_pricing: 6,
  gender: "Male",
  shoe_size: 45
)

louboutin = Shoe.create(
  user_id: arthur.id,
  title: "Louboutin",
  description: "I don't use them every day so I want them to be useful for other poeple",
  brand: "Louboutin",
  model: "So Kate 120",
  purchasing_date: Date.new(),
  color: "Black",
  daily_pricing: 4,
  gender: "Female",
  shoe_size: 38
)

crocspink = Shoe.create(
  user_id: basil.id,
  title: "Crocs Boots",
  description: "I'm successful",
  brand: "Aigle",
  model: "Crocs Boots",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 2,
  gender: "For both",
  shoe_size: 39
)

bolo = Shoe.create(
  user_id: arthur.id,
  title: "Bolo",
  description: "Slightly worn",
  brand: "Italia shoes",
  model: "Escarpins",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 1,
  gender: "Female",
  shoe_size: 38
)

tongsandwish = Shoe.create(
  user_id: basil.id,
  title: "Tong Sandwish",
  description: "Amazing style",
  brand: "Foodfoot",
  model: "Crocs Boots",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 3,
  gender: "For both",
  shoe_size: 44
)

coraux = Shoe.create(
  user_id: arthur.id,
  title: "Coral",
  description: "Not easy, only for performers",
  brand: "Seadshoe",
  model: "Escarpins",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 2,
  gender: "Female",
  shoe_size: 37
)

piscine = Shoe.create(
  user_id: basil.id,
  title: "Swimming pool",
  description: "Drity and old",
  brand: "Shoeswim",
  model: "Escarpins",
  purchasing_date: Date.new(),
  color: "Red",
  daily_pricing: 2,
  gender: "Female",
  shoe_size: 36
)

nature = Shoe.create(
  user_id: arthur.id,
  title: "Foots",
  description: "Nice good style",
  brand: "Footnatur",
  model: "Crocs Boots",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 3,
  gender: "For both",
  shoe_size: 49
)

palme = Shoe.create(
  user_id: basil.id,
  title: "Palmes",
  description: "Good product",
  brand: "Seadshoe",
  model: "Escarpins",
  purchasing_date: Date.new(),
  color: "Black",
  daily_pricing: 4,
  gender: "Female",
  shoe_size: 39
)

fish = Shoe.create!(
  user_id: arthur.id,
  title: "Fish sweet",
  description: "New shoes",
  brand: "Seadshoe",
  model: "Escarpins",
  purchasing_date: Date.new(),
  color: "Pink",
  daily_pricing: 2,
  gender: "Female",
  shoe_size: 42
)

sabot = Shoe.create(
  user_id: basil.id,
  title: "Sabots",
  description: "New may 2021",
  brand: "Horshoes",
  model: "Boots",
  purchasing_date: Date.new(),
  color: "Black",
  daily_pricing: 5,
  gender: "Female",
  shoe_size: 37
)

boot = Shoe.create(
  user_id: arthur.id,
  title: "Boots",
  description: "Old but good",
  brand: "Aigle",
  model: "Boots",
  purchasing_date: Date.new(),
  color: "Yellow",
  daily_pricing: 2,
  gender: "For both",
  shoe_size: 41
)

tennis = Shoe.create(
  user_id: basil.id,
  title: "Tong Sneakers",
  description: "Slightly worn",
  brand: "Tongui",
  model: "Baskets",
  purchasing_date: Date.new(),
  color: "Green",
  daily_pricing: 3,
  gender: "For both",
  shoe_size: 44
)

puts "Created #{Shoe.all.size} shoes from seeds.rb"

photo_stan_smith = URI.open('https://images-na.ssl-images-amazon.com/images/I/61Xv%2BIE1vtL._AC_UX500_.jpg')
stan_smith.photo.attach(io: photo_stan_smith, filename: 'stan_smith.jpg', content_type: 'image/jpg')

photo_crocs = URI.open('https://photos6.spartoo.com/photos/359/3594021/3594021_350_A.jpg')
crocs.photo.attach(io: photo_crocs, filename: 'crocs.jpg', content_type: 'image/jpg')

photo_clarks = URI.open('https://www.commeuncamion.com/content/uploads/2017/02/comparatif-desert-boots-Clarks-porte.jpg')
clarks.photo.attach(io: photo_clarks, filename: 'clarks.jpg', content_type: 'image/jpg')

photo_louboutin = URI.open('https://static-eu.christianlouboutin.com/media/catalog/product/cache/50910a554f402a7e962c16653ab289e4/3/1/3130694bk01-3130694bk01-main_image-ecommerce-christianlouboutin-sokate-3130694_bk01_1_1200x1200.jpg')
louboutin.photo.attach(io: photo_louboutin, filename: 'louboutin.jpg', content_type: 'image/jpg')

photo_crocspink = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_chaussure-moche.jpeg')
crocspink.photo.attach(io: photo_crocspink, filename: 'crocspink.jpg', content_type: 'image/jpg')

photo_bolo = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_9322722211108.jpeg')
bolo.photo.attach(io: photo_bolo, filename: 'bolo.jpg', content_type: 'image/jpg')

photo_tongsandwish = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_7673456353369.jpeg')
tongsandwish.photo.attach(io: photo_tongsandwish, filename: 'tongsandwish.jpg', content_type: 'image/jpg')

photo_coraux = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_4952895464422.jpeg')
coraux.photo.attach(io: photo_coraux, filename: 'coraux.jpg', content_type: 'image/jpg')

photo_piscine = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_480377086717.jpeg')
piscine.photo.attach(io: photo_piscine, filename: 'piscine.jpg', content_type: 'image/jpg')

photo_nature = URI.open('http://www.chaussures-collector.com/wp-content/uploads/2013/03/2624157_5135928247124.jpeg')
nature.photo.attach(io: photo_nature, filename: 'nature.jpg', content_type: 'image/jpg')

photo_palme = URI.open('https://penseesduneshoesaholic.com/wp-content/uploads/2012/11/chaussuresmoches2.jpg')
palme.photo.attach(io: photo_palme, filename: 'palme.jpg', content_type: 'image/jpg')

photo_fish = URI.open('https://theshoescollector.files.wordpress.com/2014/06/paper-shoes.jpg')
fish.photo.attach(io: photo_fish, filename: 'fish.jpg', content_type: 'image/jpg')


photo_sabot = URI.open('https://koreus.cdn.li/media/201403/83-insolite-27.jpg')
sabot.photo.attach(io: photo_sabot, filename: 'sabot.jpg', content_type: 'image/jpg')

photo_boot = URI.open('https://theshoescollector.files.wordpress.com/2014/07/ugly-boots.jpg')
boot.photo.attach(io: photo_boot, filename: 'boot.jpg', content_type: 'image/jpg')

photo_tennis = URI.open('http://abenchaalors.fr/wp-content/uploads/2014/04/basket.jpg')
tennis.photo.attach(io: photo_tennis, filename: 'tennis.jpg', content_type: 'image/jpg')



puts "Attached #{Shoe.all.size} photos on shoes"

basil_location = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
basil_location.shoe = fish
basil_location.user = arthur
basil_location.location_pricing = basil_location.shoe.daily_pricing * (basil_location.date_end - basil_location.date_beginning).to_i
basil_location.save

basil_location_two = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
basil_location_two.shoe = nature
basil_location_two.user = arthur
basil_location_two.location_pricing = basil_location_two.shoe.daily_pricing * (basil_location_two.date_end - basil_location_two.date_beginning).to_i
basil_location_two.save

artur_location = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
artur_location.shoe = sabot
artur_location.user = basil
artur_location.location_pricing = artur_location.shoe.daily_pricing * (artur_location.date_end - artur_location.date_beginning).to_i
artur_location.save

artur_location_two = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
artur_location_two.shoe = tennis
artur_location_two.user = basil
artur_location_two.location_pricing = artur_location_two.shoe.daily_pricing * (artur_location_two.date_end - artur_location_two.date_beginning).to_i
artur_location_two.save

arthur_loc_tree = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
arthur_loc_tree.shoe = tongsandwish
arthur_loc_tree.user = basil
arthur_loc_tree.location_pricing = arthur_loc_tree.shoe.daily_pricing * (arthur_loc_tree.date_end - arthur_loc_tree.date_beginning).to_i
arthur_loc_tree.save

puts "Attached #{Location.all.size} locations"


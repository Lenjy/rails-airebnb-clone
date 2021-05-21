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

test_01 = User.create(first_name: "Basil", last_name: "Lizotte", address: "4 rue Victor Masse", telephone_number: "0675674509", email: "basil.lizotte@gmail.com", password: "Lewagon 2021", password_confirmation: "Lewagon 2021")
test_02 = User.create(first_name: "Arthur", last_name: "Manguin", address: "20 rue Victor Masse", telephone_number: "0675674512", email: "arthur@gmail.com", password: "Lewagon 2021", password_confirmation: "Lewagon 2021")


photo_basil = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQE3w6qncy7Plw/profile-displayphoto-shrink_400_400/0/1620132183102?e=1626912000&v=beta&t=SAQo11fB-mb9HerJn-MjDj96KS6ozEEMJRVnEyLUZrU')
test_01.photo.attach(io: photo_basil, filename: 'basil_demo.jpg', content_type: 'image/jpg')

photo_arthur = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQELhBcLohE_3g/profile-displayphoto-shrink_400_400/0/1517456385177?e=1626912000&v=beta&t=TZYnAlkO6MwZR840tiSaZmY5t5CcFaAVWzxLaT8Zqm8')
test_02.photo.attach(io: photo_arthur, filename: 'arthur_demo.jpg', content_type: 'image/jpg')

puts "Created #{User.all.size} user from seeds.rb"

# 15.times {
#   Shoe.create(
#     user_id: test_01.id,
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
  user_id: test_01.id,
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
  user_id: test_02.id,
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
  user_id: test_01.id,
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

new_balance = Shoe.create(
  user_id: test_02.id,
  title: "Cool New Balance",
  description: "New but too small for me",
  brand: "New Balance",
  model: "237",
  purchasing_date: Date.new(),
  color: "Multicolor",
  daily_pricing: 4,
  gender: "For both",
  shoe_size: 37
)

louboutin = Shoe.create(
  user_id: test_01.id,
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

puts "Created #{Shoe.all.size} shoes from seeds.rb"

photo_stan_smith = URI.open('https://images-na.ssl-images-amazon.com/images/I/61Xv%2BIE1vtL._AC_UX500_.jpg')
stan_smith.photo.attach(io: photo_stan_smith, filename: 'stan_smith.jpg', content_type: 'image/jpg')

photo_crocs = URI.open('https://photos6.spartoo.com/photos/359/3594021/3594021_350_A.jpg')
crocs.photo.attach(io: photo_crocs, filename: 'crocs.jpg', content_type: 'image/jpg')

photo_clarks = URI.open('https://www.commeuncamion.com/content/uploads/2017/02/comparatif-desert-boots-Clarks-porte.jpg')
clarks.photo.attach(io: photo_clarks, filename: 'clarks.jpg', content_type: 'image/jpg')

photo_new_balance = URI.open('https://www.commeuncamion.com/content/uploads/2021/04/95.jpg')
new_balance.photo.attach(io: photo_new_balance, filename: 'new_balance.jpg', content_type: 'image/jpg')

photo_louboutin = URI.open('https://static-eu.christianlouboutin.com/media/catalog/product/cache/50910a554f402a7e962c16653ab289e4/3/1/3130694bk01-3130694bk01-main_image-ecommerce-christianlouboutin-sokate-3130694_bk01_1_1200x1200.jpg')
louboutin.photo.attach(io: photo_louboutin, filename: 'louboutin.jpg', content_type: 'image/jpg')

puts "Attached #{Shoe.all.size} photos on shoes"

basil_location = Location.new( date_beginning: Date.new(2021,05,21), date_end: Date.new(2021,05,28))
basil_location.shoe = new_balance
basil_location.user = test_01
basil_location.location_pricing = basil_location.shoe.daily_pricing * (basil_location.date_end - basil_location.date_beginning).to_i
basil_location.save

puts "Attached #{Location.all.size} locations"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../app/models/category'
require_relative '../app/models/shoe'

Category.destroy_all
Shoe.destroy_all
User.destroy_all

Category.create(name: "Sport")
Category.create(name: "Sneakers")
Category.create(name: "Slippers")
Category.create(name: "Derbies")
Category.create(name: "Richelieu")
Category.create(name: "Sandales")
Category.create(name: "Mules")


puts "Created #{Category.all.size} categories from seeds.rb"

test_01 = User.create(first_name: "Basil", last_name: "Lizotte", address: "4 rue Victor Masse", telephone_number: "0675674509", email: "basil.lizotte@gmail.com", password: "Lewagon 2021", password_confirmation: "Lewagon 2021")

puts "Created #{User.all.size} user from seeds.rb"

15.times {
  Shoe.create(
    user_id: test_01.id,
    title: "Cool shoe from seeds.rb",
    description: "This shoe is really cool, it's so nice and comes from seeds.rb",
    brand: ["Nike", "Adidas", "Reebok", "Asics", "Clarks"].sample,
    model: "whatever",
    purchasing_date: Date.new,
    color: ['red', 'yellow', 'green', 'white'].sample,
    daily_pricing: rand(4..50),
<<<<<<< HEAD
    gender: "Male",
    shoe_size: 40
=======
    gender: ["Male", "Female", "For both"].sample,
    shoe_size: rand(34..50) 
>>>>>>> master
  )
}

puts "Created #{Shoe.all.size} shoes from seeds.rb"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting all cars and users..."

Car.destroy_all
User.destroy_all

puts "Cars and users deleted"

puts "Creating users..."

user1 = User.create(email: "blabla@hotmail.com", password: "123456", first_name: "Yassir", last_name: "Lapin")
user2 = User.create(email: "benjamin@hotmail.com", password: "123456", first_name: "Benjamin", last_name: "Renard")
user3 = User.create(email: "gauthier@hotmail.com", password: "123456", first_name: "Gauthier", last_name: "Faucon Singe")

puts "Users created"

puts "Creating cars..."

Car.create!(brand: 'Mercedes', model: 'AMG A-35', price_per_day: 40,
           address: 'leWagon Street 50', km: '20000', year: '2016', seats: '4',
           carburant: 'Diesel', doors: 5, power: 300, user: user2)
Car.create(brand: 'Audi', model: 'Machin', price_per_day: 35,
           address: 'Rue là-bas 50', km: '12566', year: '2012', seats: '4',
           carburant: 'Electric', doors: 3, power: 260, user: user3)
Car.create(brand: 'Burgercar', model: 'Borgir', price_per_day: 10,
           address: 'Rue du gourmand 50', km: '200', year: '2024', seats: '1',
           carburant: 'Olive Oil', doors: 2, power: 2100, user: user1)

puts "Cars created"

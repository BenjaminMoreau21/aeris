
require "open-uri"

Review.destroy_all
Booking.destroy_all
Car.destroy_all
User.destroy_all

puts "Cars and users deleted"

puts "Creating users..."

user1 = User.create(email: "blabla@hotmail.com", password: "123456", first_name: "Yassir", last_name: "Lapin")
user2 = User.create(email: "benjamin@hotmail.com", password: "123456", first_name: "Benjamin", last_name: "Renard")
user3 = User.create(email: "gauthier@hotmail.com", password: "123456", first_name: "Gauthier", last_name: "Faucon Singe")

puts "Users created"

puts "Creating cars..."

file = URI.open("https://www.flat6mag.com/medias/images/interieur-porsche-911-st-flat-6-mag.png")
car = Car.new(brand: 'Mercedes', model: 'AMG A-35', price_per_day: 40,
  address: 'leWagon Street 50', km: '20000', year: '2016', seats: '4',
  carburant: 'Diesel', doors: 5, power: 300, user: user2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "porsche.png", content_type: "image/png")
car.save!

file = URI.open("https://cdn.motor1.com/images/mgl/6ZAvXk/s1/lamborghini-invencible.jpg")
car = Car.new(brand: 'Lamborghini', model: 'Aventador', price_per_day: 40,
  address: 'leWagon Street 50', km: '20000', year: '2021', seats: '2',
  carburant: 'Essence', doors: 5, power: 650, user: user1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "lambo.jpg", content_type: "image/jpg")
car.save!

file = URI.open("https://www.autoscout24.be/cms-content-assets/3ajyAoKA67PtPgPAiV7FHC-f8909352ff7e80aba11c29b9c3d1b672-Medium-2226-McLarenP1Bahrain-1100.jpg")
car = Car.new(brand: 'McLaren', model: '720s', price_per_day: 342,
  address: 'Wavre', km: '20000', year: '2021', seats: '2',
  carburant: 'Diesel', doors: 5, power: 650, user: user1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "lambo.jpg", content_type: "image/jpg")
car.save!

file = URI.open("https://www.flat6mag.com/medias/images/porsche-taycan-baie-givree-arriere.jpg")
car = Car.new(brand: 'Porsche', model: 'Taycan', price_per_day: 234,
  address: 'Wavre', km: '2346', year: '2023', seats: '2',
  carburant: 'Electric', doors: 5, power: 765, user: user3, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "porsche2.jpg", content_type: "image/jpg")
car.save!

file = URI.open("https://cdn.motor1.com/images/mgl/6ZAvXk/s1/lamborghini-invencible.jpg")
car = Car.new(brand: 'Lamborghini', model: 'Aventador', price_per_day: 40,
  address: 'leWagon Street 50', km: '20000', year: '2021', seats: '2',
  carburant: 'Essence', doors: 5, power: 650, user: user1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "lambo.jpg", content_type: "image/jpg")
car.save!

file = URI.open("https://www.flat6mag.com/medias/images/interieur-porsche-911-st-flat-6-mag.png")
car = Car.new(brand: 'Mercedes', model: 'AMG A-35', price_per_day: 40,
  address: 'leWagon Street 50', km: '20000', year: '2016', seats: '4',
  carburant: 'Diesel', doors: 5, power: 300, user: user1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "porsche.png", content_type: "image/png")
car.save!

file = URI.open("https://www.flat6mag.com/medias/images/porsche-taycan-baie-givree-arriere.jpg")
car = Car.new(brand: 'Porsche', model: 'Taycan', price_per_day: 234,
  address: 'Wavre', km: '2346', year: '2023', seats: '2',
  carburant: 'Electric', doors: 5, power: 765, user: user1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
car.photo.attach(io: file, filename: "porsche2.jpg", content_type: "image/jpg")
car.save!
puts "Cars created"


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

file = URI.open("https://www.williamloughran.co.uk//media/7431/ferrari-laferrari-2311-1.jpg")
file2 = URI.open("https://www.alainclass.com/wp-content/uploads/2020/02/2015-Ferrari-LaFerrari-RED-8642-2-resht.jpg")
car = Car.new(brand: 'Ferrari', model: 'La Ferrari', price_per_day: 354,
  address: 'Paris', km: '554', year: '2006', seats: '2',
  carburant: 'Essence', doors: 5, power: 766, user: user1, description: "It boasts the most extreme performance ever achieved by a Ferrari production car and features the most advanced and innovative technical solutions which will, in the future, filter down to the rest of the Ferrari range. The LaFerrari is Ferrari’s first ever production car to be equipped with the F1-derived hybrid solution – the HY-KERS system – which combines an electric motor producing over 150 CV with the most powerful incarnation yet of Ferrari’s classic V12, with 800 CV at 9000 rpm.")
car.photos.attach(io: file, filename: "ferrari.png", content_type: "image/png")
car.photos.attach(io: file2, filename: "ferrari2.png", content_type: "image/png")
car.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/2022_Ferrari_296_%28cropped%29.jpg/1200px-2022_Ferrari_296_%28cropped%29.jpg")
file2 = URI.open("https://media.autoexpress.co.uk/image/private/s--cn4LzPik--/v1673282911/evo/2023/01/Ferrari%20296%20GTB%20eCoty%20review-5.jpg")
car = Car.new(brand: 'Ferrari', model: '296 GTB', price_per_day: 160,
  address: 'Wavre', km: '2346', year: '2021', seats: '2',
  carburant: 'Essence', doors: 5, power: 345, user: user2, description: "The 296 GTB, an evolution of Ferrari’s mid-rear-engined two-seater sports berlinetta concept, represents a revolution for the Maranello-based company as it introduces the new 120° V6 engine coupled with a plug-in (PHEV) electric motor capable of delivering up to 830 cv. The car thus defines the idea of driving fun to provide pure excitement not only when pursuing maximum performance but also in everyday driving.")
car.photos.attach(io: file, filename: "ferrari.png", content_type: "image/png")
car.photos.attach(io: file2, filename: "ferrari2.png", content_type: "image/png")
car.save!

file = URI.open("https://cdn.motor1.com/images/mgl/QMLRB/s1/ferrari-sf90-stradale.jpg")
file2 = URI.open("https://assets-global.website-files.com/5b4a3b3971d099f78f362505/63ff47746ea7d9354e426dc1_2022-Ferrari-SF90-Stradale-Rosso-Corsa-ZFF95NLA6N0273902_012.jpg")
car = Car.new(brand: 'Ferrari', model: 'SF90 Stradale', price_per_day: 263,
  address: 'Wavre', km: '2346', year: '2018', seats: '2',
  carburant: 'Essence', doors: 5, power: 963, user: user3, description: "The Mercedes-Benz S-Class, formerly known as Sonderklasse (German for 'special class', abbreviated as 'S-Klasse'), is a series of full-sized luxury sedans, limousines and armored sedans produced by the German automaker Mercedes-Benz. The S-Class is the designation for top-of-the-line Mercedes-Benz models and was officially introduced in 1972 with the W116, and has remained in use ever since. The S-Class is one of the flagship vehicles for Mercedes-Benz.")
car.photos.attach(io: file, filename: "ferrari.png", content_type: "image/png")
car.photos.attach(io: file2, filename: "ferrari2.png", content_type: "image/png")
car.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Mercedes-Benz_W223_IMG_6663.jpg/1200px-Mercedes-Benz_W223_IMG_6663.jpg")
file2 = URI.open("https://parkers-images.bauersecure.com/wp-images/22201/cut-out/930x620/mercedes-benz-s-class-00.jpg")
car = Car.new(brand: 'Mercedes-Benz', model: 'S-Class', price_per_day: 132,
  address: 'Wavre', km: '2346', year: '2023', seats: '5',
  carburant: 'Essence', doors: 5, power: 700, user: user1, description: "The Mercedes-Benz S-Class, formerly known as Sonderklasse (German for 'special class', abbreviated as 'S-Klasse'), is a series of full-sized luxury sedans, limousines and armored sedans produced by the German automaker Mercedes-Benz. The S-Class is the designation for top-of-the-line Mercedes-Benz models and was officially introduced in 1972 with the W116, and has remained in use ever since. The S-Class is one of the flagship vehicles for Mercedes-Benz.")
car.photos.attach(io: file, filename: "mercedes.jpg", content_type: "image/png")
car.photos.attach(io: file2, filename: "mercedes2.png", content_type: "image/png")
car.save!

file = URI.open("https://media.autoexpress.co.uk/image/private/s--510s6t_n--/v1681404536/evo/2023/04/Mercedes%20AMG%20A35%20review%202023-5.jpg")
file2 = URI.open("https://mobile-img.lpcdn.ca/lpca/924x/8779c1b6/2429206c-7b6a-11eb-a88b-02fe89184577.jpg")
car = Car.new(brand: 'Mercedes-Benz', model: 'AMG A-35', price_per_day: 40,
  address: 'Avenue Merco 89', km: '6877', year: '2018', seats: '6',
  carburant: 'Diesel', doors: 5, power: 300, user: user2, description: "As impressive as ever, as individual as never before: the Mercedes-AMG A 35 Sedan knows how to impress with numerous options that show off its compact, elegant form to even greater advantage. AMG light-alloy wheels with dynamic spoke designs, new paint finishes and highlights such as the Panoramic Rooftop make every drive a real experience and offer you more opportunities for individualisation than ever before.")
car.photos.attach(io: file, filename: "mercedes.png", content_type: "image/png")
car.photos.attach(io: file2, filename: "mercedes2.png", content_type: "image/png")
car.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Benz_W_222_S_350_Bluetec.JPG/1280px-Mercedes-Benz_W_222_S_350_Bluetec.jpg")
file2 = URI.open("https://i.ytimg.com/vi/8LprsBh24vw/maxresdefault.jpg")
car = Car.new(brand: 'Mercedes-Benz', model: 'S-Class W222', price_per_day: 85,
  address: 'German Street 95', km: '12000', year: '2019', seats: '5',
  carburant: 'Diesel', doors: 5, power: 300, user: user3, description: "The Mercedes-Benz W222 is the sixth generation of the S-Class produced from 2013 to 2020, the successor of the W221 S-Class and the predecessor of the W223 S-Class. The W222 was designed in 2009. The original design proposal of the car was created by Il-hun Yoon, a Korean designer, who was inspired by the Mercedes-Benz F700 concept car.[6] The exterior design was developed by a team of designers under the direction of Robert Lešnik. The W222 has a similar design theme to the C-Class (W205) and E-Class (W213).")
car.photos.attach(io: file, filename: "mercedes.png", content_type: "image/png")
car.photos.attach(io: file2, filename: "mercedes2.png", content_type: "image/png")
car.save!

puts "Cars created"

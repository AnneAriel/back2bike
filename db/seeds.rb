# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# créer des users avec id et ajouter user_id dans les bikes
require "open-uri"

Bike.destroy_all
User.destroy_all

user1 = User.create!(name: "Cathy", email: "catherinecrozat@gmail.com", password: "toto123")
user2 = User.create!(name: "Jean Louis", email: "jl@gmail.com", password: "toto123")
user3 = User.create!(name: "Nelbi", email: "nelbi@gmail.com", password: "toto123")
user4 = User.create!(name: "Anne Ariel", email: "anne_ariel@gmail.com", password: "toto123")

Bike1 = Bike.create!(category: "VTT", description: "whatever", localisation: "Paris 12", daily_price: 8, user: user1)
photo = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmlrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
Bike1.photo.attach(io: photo, filename: "velo")

Bike2 = Bike.create!(category: "Road bike", description: "this", localisation: "Paris 12", daily_price: 8, user: user1)
photo = URI.open("https://cdn.shopify.com/s/files/1/0290/9382/2538/products/8436578262618.PT14_510x@2x.progressive.jpg?v=1617961624")
Bike2.photo.attach(io: photo, filename: "velo")

Bike3 = Bike.create!(category: "Mountain bike", description: "that", localisation: "Paris 12", daily_price: 12, user: user1)
photo = URI.open("https://images.bikesonline.com/assets/thumbL/AITPX26TRD13G1.jpg?tr=w-334,h-220")
Bike3.photo.attach(io: photo, filename: "velo")

Bike4 = Bike.create!(category: "Electric bike", description: "wgat", localisation: "Paris 12", daily_price: 8, user: user3)
photo = URI.open("https://www.cleanrider.com/wp-content/uploads/2021/07/vanmoof-s3-blue.jpg")
Bike4.photo.attach(io: photo, filename: "velo")

Bike5 = Bike.create!(category: "Electric bike", description: "last", localisation: "Paris 12", daily_price: 10, user: user4)
photo = URI.open("https://www.test-achats.be/-/media/cowboy3_800x450.jpg?rev=2b87b5cf-6abc-4515-a137-a4eec80b9fe0&mw=480&hash=B71B42284388215BAA27CCE7C50F3778")
Bike5.photo.attach(io: photo, filename: "velo")

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

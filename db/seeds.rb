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

Bike1 = Bike.create!(category: "VTC", description: "VTC Escape – Bobebike", address: "Villa Gaudelet 75012 Paris", daily_price: 8, user: user1)
photo = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmlrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
Bike1.photo.attach(io: photo, filename: "velo")

Bike2 = Bike.create!(category: "VTT", description: "Vtt Trek Marlin 4 - Noir. The bicycle model is made from alloy, the creative design that resembles a real bicycle from structures to colors. Products are meticulously processed, delicate, sturdy material, and durable through time.", address: "Rue du capitaine ferber 75020 Paris", daily_price: 8, user: user1)
photo = URI.open("https://cdn.shopify.com/s/files/1/0290/9382/2538/products/8436578262618.PT14_510x@2x.progressive.jpg?v=1617961624")
Bike2.photo.attach(io: photo, filename: "velo")

Bike3 = Bike.create!(category: "Mountain bike", description: "Hiland Slycan has a high quality ultralight aluminum frame for riding and moving with ease,corrosion resistant and very easy to clean and maintain.Internal shift cable and brake hose routing can help your cables last longer by protecting them from any environment,reduce wind resistance for higher speed.", address: "Rue Vergniaud 75013 Paris", daily_price: 12, user: user2)
photo = URI.open("https://images.bikesonline.com/assets/thumbL/AITPX26TRD13G1.jpg?tr=w-334,h-220")
Bike3.photo.attach(io: photo, filename: "velo")

Bike4 = Bike.create!(category: "Electric bike", description: "26'' Electric bike is equipped with powerful 350W motor, the max speed is up to 19.8MPH. The riding range is 25 miles-30 miles when riding in pure electric bike mode and 50-60miles in pure assisted bike mode. It is very suitable for daily commute and mountain cycling. Strong wheels and motor allow you to face all kinds of terrain easily. You don't need to worry about the traffic jams, which can make commute more convenient.", address: "rue Tanger 75018 Paris", daily_price: 8, user: user3)
photo = URI.open("https://www.cleanrider.com/wp-content/uploads/2021/07/vanmoof-s3-blue.jpg")
Bike4.photo.attach(io: photo, filename: "velo")

Bike5 = Bike.create!(category: "Electric cargo bike", description: "The Blix Packa Genie is a durable, safety-oriented cargo e-bike that’s ready to lug up to a 400 lb payload. Not only did the Packa impress us with its design. The Packa Genie just feels like a good value as it’s stocked with a 7-speed Shimano Acera drivetrain, has two 48V, 12.8Ah (614Wh) batteries, and uses a powerful 750W motor.", address: "Boulevard Pasteur 75014 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.test-achats.be/-/media/cowboy3_800x450.jpg?rev=2b87b5cf-6abc-4515-a137-a4eec80b9fe0&mw=480&hash=B71B42284388215BAA27CCE7C50F3778")
Bike5.photo.attach(io: photo, filename: "velo")

Bike6 = Bike.create!(category: "Fancy Electric bike", description: "Low stand-over height design makes the bike easy to get on and off and easy to stabilize while standing at a stop. Upright riding position gives you great visibility; adjustable stem lets you fine-tune the cockpit to fit you. One-size adjustable frame makes sharing with friends and family as easy as changing the seat heightast", address: "Les halles 75001 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.cdiscount.com/pdt2/0/5/6/1/1200x1200/sco3700293212056/rw/velo-electrique-scooty-scooty-city-26-plus-2.jpg")
Bike6.photo.attach(io: photo, filename: "velo")

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

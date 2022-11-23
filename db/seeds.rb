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

Bike1 = Bike.create!(category: "Yellow Tandem", description: "A stylish tandem bike with protective fenders and spring seats. Also consider · Pacific Dualie Adult Tandem Bike, 26-Inch Wheels, 2-Seater, 21.", address: "Villa Gaudelet 75012 Paris", daily_price: 35, user: user1)
photo = URI.open("https://m.media-amazon.com/images/I/81MtZKYNHlL._AC_SX679_.jpg")
Bike1.photo.attach(io: photo, filename: "velo")

Bike2 = Bike.create!(category: "Electric cargo bike", description: "The Blix Packa Genie is a durable, safety-oriented cargo e-bike that’s ready to lug up to a 400 lb payload. Not only did the Packa impress us with its design. The Packa Genie just feels like a good value as it’s stocked with a 7-speed Shimano Acera drivetrain, has two 48V, 12.8Ah (614Wh) batteries, and uses a powerful 750W motor.", address: "Boulevard Pasteur 75014 Paris", daily_price: 10, user: user4)
photo = URI.open("https://cdn.shopify.com/s/files/1/0591/4424/1347/products/ebike_4_x750.jpg?v=1637571547")
Bike2.photo.attach(io: photo, filename: "velo")


Bike3 = Bike.create!(category: "Mountain bike", description: "Hiland Slycan has a high quality ultralight aluminum frame for riding and moving with ease,corrosion resistant and very easy to clean and maintain.Internal shift cable and brake hose routing can help your cables last longer by protecting them from any environment,reduce wind resistance for higher speed.", address: "Rue Vergniaud 75013 Paris", daily_price: 12, user: user2)
photo = URI.open("https://images.bikesonline.com/assets/thumbL/AITPX26TRD13G1.jpg?tr=w-334,h-220")
Bike3.photo.attach(io: photo, filename: "velo")

Bike4 = Bike.create!(category: "Tricycle Tandem", description: "A wonderfull family bike !", address: "8, Rue Tanger 75018 Paris", daily_price: 8, user: user3)
photo = URI.open("https://www.amsterdamair.fr/77350/tandem-tricycle-cote-a-cote-avec-assistance-electrique.jpg")
Bike4.photo.attach(io: photo, filename: "velo")

Bike5 = Bike.create!(category: "Kids blue bike", description: "This bike is a perfect first bike for little one! Its cool colour and graphics will make learning to ride a bike so much fun.", address: "Rue du capitaine ferber 75020 Paris", daily_price: 8, user: user1)
photo = URI.open("https://www.natureetdecouvertes.com/fstrz/r/s/cache.natureetdecouvertes.com/Medias/Images/Articles/91611280/5060513930657-v-lo-enfant-gingersnap-12-vert-bobbin_P1.jpg?width=610&height=610")
Bike5.photo.attach(io: photo, filename: "velo")

Bike6 = Bike.create!(category: "Fancy Electric bike", description: "Low stand-over height design makes the bike easy to get on and off and easy to stabilize while standing at a stop. Upright riding position gives you great visibility; adjustable stem lets you fine-tune the cockpit to fit you. One-size adjustable frame makes sharing with friends and family as easy as changing the seat heightast", address: "Les halles 75001 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.cdiscount.com/pdt2/0/5/6/1/1200x1200/sco3700293212056/rw/velo-electrique-scooty-scooty-city-26-plus-2.jpg")
Bike6.photo.attach(io: photo, filename: "velo")

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

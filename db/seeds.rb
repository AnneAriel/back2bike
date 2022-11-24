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
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045TDQ4M43-d011388c1f01-512")
user1.photo.attach(io: photo, filename: "profil")

user2 = User.create!(name: "Jean Louis", email: "jl@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045KH4RTU4-9b364aef3d01-512")
user2.photo.attach(io: photo, filename: "profil")

user3 = User.create!(name: "Nelbi", email: "nelbi@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045K5VEPU6-6f3e8bfafc04-512")
user3.photo.attach(io: photo, filename: "profil")

user4 = User.create!(name: "Anne Ariel", email: "anne_ariel@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045T6WG65S-3016efea1458-512")
user4.photo.attach(io: photo, filename: "profil")

Bike1 = Bike.create!(name: "Black Tandem", category: "Family", description: "A stylish tandem bike with protective fenders and spring seats. Also consider · Pacific Dualie Adult Tandem Bike, 26-Inch Wheels, 2-Seater, 21.", address: "Villa Gaudelet 75011 Paris", daily_price: 35, user: user1)
photo = URI.open("https://www.velo-on-line.fr/11201-zoom_default/velo-tandem-due-smart-15.jpg")
Bike1.photo.attach(io: photo, filename: "velo")

Bike2 = Bike.create!(name: "Blix Packa Genie", category: "Electric", description: "The Blix Packa Genie is a durable, safety-oriented cargo e-bike that’s ready to lug up to a 400 lb payload. Not only did the Packa impress us with its design. The Packa Genie just feels like a good value as it’s stocked with a 7-speed Shimano Acera drivetrain, has two 48V, 12.8Ah (614Wh) batteries, and uses a powerful 750W motor.", address: "Boulevard Pasteur 75014 Paris", daily_price: 10, user: user4)
photo = URI.open("https://cdn.shopify.com/s/files/1/0591/4424/1347/products/ebike_4_x750.jpg?v=1637571547")
Bike2.photo.attach(io: photo, filename: "velo")

Bike3 = Bike.create!(name: "Mountain bike", category: "Mountain", description: "Hiland Slycan has a high quality ultralight aluminum frame for riding and moving with ease,corrosion resistant and very easy to clean and maintain.Internal shift cable and brake hose routing can help your cables last longer by protecting them from any environment,reduce wind resistance for higher speed.", address: "Rue Vergniaud 75013 Paris", daily_price: 12, user: user2)
photo = URI.open("https://cdn.rosebikes.de/cms/cms.63299fea28ff65.54741827.png?im=Resize=(960)")
Bike3.photo.attach(io: photo, filename: "velo")

Bike4 = Bike.create!(name: "Tricycle Tandem", category: "Family", description: "A wonderfull family bike !", address: "8, Rue Tanger 75018 Paris", daily_price: 8, user: user3)
photo = URI.open("https://www.amsterdamair.fr/77350/tandem-tricycle-cote-a-cote-avec-assistance-electrique.jpg")
Bike4.photo.attach(io: photo, filename: "velo")

Bike5 = Bike.create!(name: "Kids blue bike", category: "Kids", description: "This bike is a perfect first bike for little one! Its cool colour and graphics will make learning to ride a bike so much fun.", address: "Rue du capitaine ferber 75020 Paris", daily_price: 8, user: user1)
photo = URI.open("https://www.natureetdecouvertes.com/fstrz/r/s/cache.natureetdecouvertes.com/Medias/Images/Articles/91611280/5060513930657-v-lo-enfant-gingersnap-12-vert-bobbin_P1.jpg?width=610&height=610")
Bike5.photo.attach(io: photo, filename: "velo")

Bike6 = Bike.create!(name: "Fancy Electric bike", category: "Electric", description: "Low stand-over height design makes the bike easy to get on and off and easy to stabilize while standing at a stop. Upright riding position gives you great visibility; adjustable stem lets you fine-tune the cockpit to fit you. One-size adjustable frame makes sharing with friends and family as easy as changing the seat heightast", address: "Les halles 75001 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.cdiscount.com/pdt2/0/5/6/1/1200x1200/sco3700293212056/rw/velo-electrique-scooty-scooty-city-26-plus-2.jpg")
Bike6.photo.attach(io: photo, filename: "velo")

Bike7 = Bike.create!(name: "Verde Cadet BMX bike", category: "BMX", description: "Verde's Cadet kicks off their core collection with an unreal entry level ride, following a winning formula the Cadet pairs impressive parts spec plus pro level looks. Fully sealed wheels, heat treated tubular 3-piece chromoly cranks, sealed bearing mid bottom bracket, custom seat/post combo and and bigger tyres too. The Cadet steps it up with a taller frame, bigger bars, longer reach stem and more room for growing riders.", address: "Rue de Rennes 75006 Paris", daily_price: 18, user: user4)
photo = URI.open("https://cdn.shopify.com/s/files/1/0062/5708/2479/products/c3534483-3d19-44c6-a75f-2334c255bf86_720x.jpg?v=1666629230")
Bike7.photo.attach(io: photo, filename: "velo")

Bike8 = Bike.create!(name: "Grand-bi Gentlemen-bike", category: "Atypical", description: "Grand-Bi QU-AX - Gentlemen-Bike Cadre acier Fourche acier Roue avant 36' Roue arrière 12' avec frein sur jante Selle et poignées en simili cuir", address: "Rue Mouffetard 75005 Paris", daily_price: 10, user: user3)
photo = URI.open("https://larustine.org/velos-bizarres-et-rigolos/11_DSCN5304.JPG")
Bike8.photo.attach(io: photo, filename: "velo")

Bike9 = Bike.create!(name: "VTT Scamp minifox balance bike", category: "VTT", description: "The Scamp Minifox balance bike is equipped with pegs mounted at the bottom bracket and removable. They will be used both to work on the rider's balance and stability while encouraging the first tricks! The frame is equipped with a reinforced rear disc brake dropout and a 6-hole disc-compatible hub.", address: "rue Stendhal 750320 Paris", daily_price: 30, user: user2)
photo = URI.open("https://media.alltricks.com/large/8443655d5be327939ea7.57015212.jpg")
Bike9.photo.attach(io: photo, filename: "velo")

Bike10 = Bike.create!(name: "Monocycle Haute Simulation", category: "Atypical", description: "Geat monocycle to start and learn how to use a monocycle for the first time!", address: "cirque d'hiver rue Amelot 75011 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.cdiscount.com/pdt2/7/0/5/1/1200x1200/zer7299936258705/rw/zerone-ornements-de-modele-de-velo-mini-modele-de.jpg")
Bike10.photo.attach(io: photo, filename: "velo")

Bike11 = Bike.create!(name: "Clubman Rayvolt V2", category: "Atypical", description: "Vintage bike with great features for thrilling sensations amateurs. An unbeatable style, very classy, that will get you anywhere!", address: "98 Rue Oberkampf 75011 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.cruiser-dealers.fr/wp-content/uploads/2020/04/clubman-1.png")
Bike11.photo.attach(io: photo, filename: "velo")

Bike12 = Bike.create!(name: "Cargo Bike", category: "Atypical", description: "Very useful cargo bike, allows you to transport heavy stuff, your kids and much more !!", address: "2 Adrienne Lecouvreur, 75007 Paris", daily_price: 10, user: user4)
photo = URI.open("https://www.amsterdamair.fr/87316/triporteur-electrique-triobike-mono-moteur-pedalier.jpg")
Bike12.photo.attach(io: photo, filename: "velo")


#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

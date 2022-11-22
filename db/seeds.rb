# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# créer des users avec id et ajouter user_id dans les bikes

User.destroy_all
Bike.destroy_all

user1 = User.create!(name: "Cathy", email: "catherinecrozat@gmail.com", password: "toto123")
user2 = User.create!(name: "Jean Louis", email: "jl@gmail.com", password: "toto123")
user3 = User.create!(name: "Nelbi", email: "nelbi@gmail.com", password: "toto123")
user4 = User.create!(name: "Anne Ariel", email: "anne_ariel@gmail.com", password: "toto123")

Bike.create!(category: "VTT", description: "whatever", localisation: "Paris 12", daily_price: 8, user: user1)
Bike.create!(category: "Road bike", description: "this", localisation: "Paris 12", daily_price: 8, user: user1)
Bike.create!(category: "Mountain bike", description: "that", localisation: "Paris 12", daily_price: 12, user: user1)
Bike.create!(category: "Electric bike", description: "wgat", localisation: "Paris 12", daily_price: 8, user: user3)
Bike.create!(category: "Electric bike", description: "last", localisation: "Paris 12", daily_price: 10, user: user4)

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

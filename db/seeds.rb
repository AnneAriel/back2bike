# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# créer des users avec id et ajouter user_id dans les bikes



bike1 = Bike.create!(category: "VTT", description: "whatever", localisation: "Paris 12", daily_price: 8)
bike2 = Bike.create!(category: "Road bike", description: "this", localisation: "Paris 12", daily_price: 8)
bike3 = Bike.create!(category: "Mountain bike", description: "that", localisation: "Paris 12", daily_price: 12)
bike4 = Bike.create!(category: "Electric bike", description: "wgat", localisation: "Paris 12", daily_price: 8)
bike5 = Bike.create!(category: "Electric bike", description: "last", localisation: "Paris 12", daily_price: 10)

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

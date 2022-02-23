# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.create!(price: 1000000, brand: "Benz", model: "Flash", image: "imageurl", description: "Roll with the big boys")
Car.create!(price: 100, brand: 'Toyota', model: 'Corolla', image: 'imageurl', description: "Just roll with the boys")
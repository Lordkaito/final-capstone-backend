# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Reservation.destroy_all
Car.destroy_all


@car = Car.create!(price: 1000000, brand: "Benz", model: "Flash", image: "imageurl", description: "Roll with the big boys")
Car.create!(price: 100, brand: 'Toyota', model: 'Corolla', image: 'imageurl', description: "Just roll with the boys")
Reservation.create!(username: 'John', car_id: @car.id, city: 'Madrid', reservation_date: '2020-01-01', to_date: '2020-01-12')

p '2 cars and 1 reservation Created'
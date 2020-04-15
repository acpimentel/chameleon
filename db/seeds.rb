# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all moods"
puts "Destroying all movies"
puts "Destroying all quotes"

Mood.destroy_all
Movie.destroy_all
Quote.destroy_all

User.create!(first_name: "Catarina", last_name: "Pimentel", email: "cpeixotopimentel@gmail.com", password: "1234567")

Movie.create(name: "Kill Bill")
Movie.create(name: "Matrix")
Movie.create(name: "Star Wars")
Movie.create(name: "Peter Pan")
Movie.create(director: "Guilhermino")
Movie.create(director: "Zé dos Bosques")
Movie.create(director: "Paulo Afonso")
Movie.create(director: "Barco de Chloé")

puts "Done!"

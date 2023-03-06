# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

PASSWORD = "password1"

deja = User.create!(email: "dejagordon80@gmail.com", password: PASSWORD)
usman = User.create!(email: "Usmanbashir42@gmail.com", password: PASSWORD)
inkcap  = User.create!(email: "inkcap20@gmail.com", password: PASSWORD)


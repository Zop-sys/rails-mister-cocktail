# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Dose.destroy_all
Ingredient.destroy_all


lemon = {name: "lemon"}
ice = {name: "ice"}
mint = {name: "mint leaves"}

[lemon, ice, mint].each do |attributes|
  ingred = Ingredient.create!(attributes)
  puts "Created #{ingred.name}"
end

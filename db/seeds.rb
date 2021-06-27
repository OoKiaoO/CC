# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning out old junk~'
Food.destroy_all
puts 'Database shiny & new! Ready to seed:'

puts 'Creating 10 random foods...'
10.times do
  food = Food.new(
    food_name: Faker::Food.ingredient,
    quantity:  100,
    calories: rand(0..1000),
    serving_unit: 'grams'
  )
  puts `Created #{food.name}..`
  food.save!
  puts '..and added to the pantry!'
end
puts "Created all fake foods! Fridge's full!"

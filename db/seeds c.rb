# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all
Recipe.destroy_all
Ingredient.destroy_all


# TEA MAKING
recipe = Recipe.create(name: "Black Tea", content: "boil some water, then add leafs")
puts Recipe.last.name + "created"

ingredient_1 = Ingredient.create(name: "Water")
puts Ingredient.last.name + "created"
ingredient_2 = Ingredient.create(name: "Black Tea leafs")
puts Ingredient.last.name + "created"

dose_1 = Dose.new()
dose_1.ingredient = ingredient_1
dose_1.recipe = recipe
dose_1.content = "500ml"
dose_1.save
print Dose.last
puts "created"
dose_2 = Dose.new()
dose_2.ingredient = ingredient_2
dose_2.recipe = recipe
dose_2.content = "1 x teaspoon"
dose_2.save
print Dose.last
puts "created"


require_relative '../config/environment.rb'

bk1 = Bakery.new("First Bakery")
bk2 = Bakery.new("Second Bakery")

dsrt1 = Dessert.new("Cheese Cake", bk1)
dsrt5 = Dessert.new("Cheese Cake", bk1)
dsrt2 = Dessert.new("Chocolate", bk1)
dsrt3 = Dessert.new("Ice Cream", bk2)

ig1 = Ingredient.new("Cream", dsrt3)
ig2 = Ingredient.new("Ice", dsrt3)
ig3 = Ingredient.new("Choco", dsrt2)
ig4 = Ingredient.new("Cheese", dsrt1)
ig5 = Ingredient.new("chocolate sprinkles", dsrt2)
ig6 = Ingredient.new("chocolate mousse", dsrt2)
ig7 = Ingredient.new("chocolate", dsrt2)

puts 'Bakery knows its desserts'
puts bk1.desserts.include?(dsrt1)
puts bk1.desserts.include?(dsrt2)
puts bk1.desserts.include?(dsrt5)

puts 'Bakery knows its ingredients'
puts bk1.ingredients.include?(ig3)
puts bk1.ingredients.include?(ig4)

puts 'Bakery has a shopping list'
puts bk1.shopping_list.include?("Cheese")
puts bk1.shopping_list.include?("Choco")

puts 'Bakery knows its calorie average'
puts bk1.average_calories

puts 'Dessert knows its ingredients'
puts dsrt1.ingredients.include?(ig4)

puts 'Dessert knows its bakery'
puts dsrt1.bakery == bk1

puts 'Dessert knows its calorie count'
puts dsrt3.calories == 180

puts 'Ingredient knows its dessert'
puts ig1.dessert == dsrt3

puts 'Ingredient know its bakery'
puts ig1.bakery == bk2

puts 'Ingredient find by name chocolate'
puts Ingredient.find_by_name('chocolate').include?(ig5)
puts Ingredient.find_by_name('chocolate').include?(ig6)
puts Ingredient.find_by_name('chocolate').include?(ig7)



def reload
  load 'config/environment.rb'
end

Pry.start

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient = open(url).read
ingredient_list = JSON.parse(ingredient)
ingredient_array = ingredient_list["drinks"]
ingredient_array.each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

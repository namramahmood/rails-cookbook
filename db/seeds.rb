# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Create some categories (if you haven't created them yet)
category1 = Category.create(name: "Desserts")
category2 = Category.create(name: "Main Courses")
category3 = Category.create(name: "Appetizers")
category4 = Category.create(name: "Drinks")

# Create some recipes
Recipe.create(name: "Chocolate Cake", description: "A rich and moist chocolate cake", category: category1)
Recipe.create(name: "Spaghetti Bolognese", description: "Classic spaghetti with a rich meat sauce", category: category2)
Recipe.create(name: "Bruschetta", description: "Italian appetizer with tomatoes, basil, and garlic on toasted bread", category: category3)
Recipe.create(name: "Margarita", description: "A refreshing cocktail with lime and tequila", category: category4)

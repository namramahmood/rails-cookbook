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

# db/seeds.rb

puts "Cleaning DB..."
Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all

puts "Creating recipes..."
carbonara = Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper. Creamy and satisfying without using any cream!",
  image_url: "https://images.unsplash.com/photo-1603133872878-684f208fb84b",
  rating: 4.7
)

tikka = Recipe.create!(
  name: "Chicken Tikka Masala",
  description: "Chunks of grilled chicken in a rich, creamy tomato-based sauce, infused with spices and served with naan or rice.",
  image_url: "https://images.unsplash.com/photo-1625944227523-1ee2f92e4b4f",
  rating: 4.8
)

stir_fry = Recipe.create!(
  name: "Vegetable Stir Fry",
  description: "A colorful medley of fresh vegetables stir-fried in a savory soy-ginger sauce.",
  image_url: "https://images.unsplash.com/photo-1597395064538-8f1e7c9fe6b7",
  rating: 4.4
)

burger = Recipe.create!(
  name: "Classic Cheeseburger",
  description: "Grilled beef patty with cheese, lettuce, tomato, and pickles on a toasted bun.",
  image_url: "https://images.unsplash.com/photo-1550547660-d9450f859349",
  rating: 4.6
)

puts "Creating categories..."
italian = Category.create!(name: "Italian")
indian = Category.create!(name: "Indian")
asian = Category.create!(name: "Asian")
american = Category.create!(name: "American")

puts "Creating bookmarks..."
Bookmark.create!(category: italian, recipe: carbonara, comment: "Authentic Roman pasta.")
Bookmark.create!(category: indian, recipe: tikka, comment: "My go-to comfort food.")
Bookmark.create!(category: asian, recipe: stir_fry, comment: "Quick and healthy.")
Bookmark.create!(category: american, recipe: burger, comment: "Perfect for BBQ nights.")

puts "#{Recipe.count} recipes, #{Category.count} categories, and #{Bookmark.count} bookmarks created!"

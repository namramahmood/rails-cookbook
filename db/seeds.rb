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

puts "cleaning DB..."
Recipe.destroy_all

puts "creating new recipes..."
Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper. Creamy and satisfying without using any cream!",
  image_url: "https://images.unsplash.com/photo-1603133872878-684f208fb84b",
  rating: 4.7
)

Recipe.create!(
  name: "Chicken Tikka Masala",
  description: "Chunks of grilled chicken enveloped in a rich, creamy tomato-based sauce, infused with spices and served with naan or rice.",
  image_url: "https://images.unsplash.com/photo-1625944227523-1ee2f92e4b4f",
  rating: 4.8
)

Recipe.create!(
  name: "Vegetable Stir Fry",
  description: "A quick and colorful medley of fresh vegetables stir-fried in a savory soy-ginger sauce. Perfect for a healthy weeknight dinner.",
  image_url: "https://images.unsplash.com/photo-1597395064538-8f1e7c9fe6b7",
  rating: 4.4
)

Recipe.create!(
  name: "Classic Cheeseburger",
  description: "Juicy grilled beef patty topped with melted cheese, lettuce, tomato, and pickles on a toasted bun. A timeless American favorite.",
  image_url: "https://images.unsplash.com/photo-1550547660-d9450f859349",
  rating: 4.6
)

puts "#{Recipe.count} recipes created!"
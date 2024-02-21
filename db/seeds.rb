# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
puts "Creating restaurants..."
burgerVie = {name: "BurgerVie", address: "7 coucou St, London E2 7JE", category: "belgian"}
thaithai =  {name: "Thaithai", address: "56A angel High St, London E1 6PQ", category: "japanese"}
chineseSt = {name: "ChineseSt", address: "7 hihi St, Oxford E2 7JE", category: "chinese"}
bonjour =  {name: "Bonjour", address: "56A Ruby St, London ZE 6PQ", category: "french"}


[dishoom, pizza_east, burgerVie, thaithai, chineseSt, bonjour].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

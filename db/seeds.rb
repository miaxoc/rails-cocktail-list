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
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'Mint leaves')

# cosmopolitan
Ingredient.create(name: 'Vodka Citron')
Ingredient.create(name: 'Cranberry Juice')
Ingredient.create(name: 'Cointreau')
Ingredient.create(name: 'Fresh lime juice')

# Aperol
Ingredient.create(name: 'Aperol')
Ingredient.create(name: 'Prosecco')
Ingredient.create(name: 'Soda water')

# Mojito
Ingredient.create(name: 'White Rum')
Ingredient.create(name: 'Sugar')
# Ingredient.create(name: 'Soda water')
# Ingredient.create(name: 'Fresh lime juice')
# Ingredient.create(name: 'Mint leaves')

# Espresso Martini
Ingredient.create(name: 'Vodka')
Ingredient.create(name: 'Kahlúa')
Ingredient.create(name: 'Sugar syrup')
Ingredient.create(name: 'Espresso')

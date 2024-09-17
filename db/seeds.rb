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
# 1 1/2 oz Vodka Citron, 1 oz Cranberry juice, 1/2 oz Cointreau, 1/2 oz Fresh lime juice
Ingredient.create(name: 'Vodka Citron')
Ingredient.create(name: 'Cranberry Juice')
Ingredient.create(name: 'Cointreau')
Ingredient.create(name: 'Fresh lime juice')

# Aperol
#1 1/4 oz Aperol, 2 oz Prosecco, Splash of Soda water
Ingredient.create(name: 'Aperol')
Ingredient.create(name: 'Prosecco')
Ingredient.create(name: 'Soda water')

# Mojito
#1 1/2 oz White rum, 1 oz Fresh lime juice, 2 teaspoons Sugar, 6 leaves of Mint, Soda Water
Ingredient.create(name: 'White Rum')
Ingredient.create(name: 'Sugar')
# Ingredient.create(name: 'Soda water')
# Ingredient.create(name: 'Fresh lime juice')
# Ingredient.create(name: 'Mint leaves')

# Espresso Martini
# 2oz vodka 1oz Kahlua 1oz espresso
Ingredient.create(name: 'Vodka')
Ingredient.create(name: 'Kahlúa')
Ingredient.create(name: 'Espresso')

# Gin & Tonic
# 1 part to 3 parts gin (to taste), 3 parts tonic water
Ingredient.create(name: 'Gin')
Ingredient.create(name: 'Tonic')

Cocktail.create(name: 'ESPRESSOOOOO', cocktaildescription: 'The Espresso Martini is a bold and sophisticated cocktail that perfectly blends the rich flavors of coffee with the smoothness of vodka.', photo: 'aperol.webp' )

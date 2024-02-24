Ingredient.destroy_all

# Array of ingredient types
ingredient_types = ['vegetable', 'fruit', 'meat', 'dairy', 'grain', 'spice']

# Helper method to generate a random boolean value for stock
def random_stock
  [true, false].sample
end
# Seed data for ingredients
10.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    stock: random_stock,
    ingredient_type: ingredient_types.sample,
  )
end
puts "Seed data for ingredients created successfully!"

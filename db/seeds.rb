Ingredient.destroy_all

# Array of ingredient types
ingredient_types = ['vegetable', 'fruit', 'meat', 'dairy', 'grain', 'spice', 'vegan', 'nuts', 'fish']

# Helper method to generate a random boolean value for stock
def random_stock
  [true, false].sample
end
# Seed data for ingredients
  Ingredient.create(name: "Chicken", stock: random_stock, ingredient_type: "meat")
  Ingredient.create(name: "Flour", stock: random_stock, ingredient_type: "grain")
  Ingredient.create(name: "Butter", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Pepper", stock: random_stock, ingredient_type: "spice")
  Ingredient.create(name: "Milk", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Nutmeg", stock: random_stock, ingredient_type: "spice")
  Ingredient.create(name: "Beef", stock: random_stock, ingredient_type: "meat")
  Ingredient.create(name: "Parmigiano", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Tofu", stock: random_stock, ingredient_type: "vegan")
  Ingredient.create(name: "Soy Milk", stock: random_stock, ingredient_type: "vegan")
  Ingredient.create(name: "Mozzarella", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Chilli", stock: random_stock, ingredient_type: "spice")
  Ingredient.create(name: "Pork", stock: random_stock, ingredient_type: "meat")
  Ingredient.create(name: "Rice", stock: random_stock, ingredient_type: "grain")
  Ingredient.create(name: "Cream", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Cumin", stock: random_stock, ingredient_type: "spice")
  Ingredient.create(name: "Cheddar", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Curry", stock: random_stock, ingredient_type: "spice")
  Ingredient.create(name: "Prawns", stock: random_stock, ingredient_type: "fish")
  Ingredient.create(name: "CousCous", stock: random_stock, ingredient_type: "grain")
  Ingredient.create(name: "Feta", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Garlic", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Onion", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Cheese", stock: random_stock, ingredient_type: "dairy")
  Ingredient.create(name: "Lettuce", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Tomatoes", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Peppers", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Mushrooms", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Potatoes", stock: random_stock, ingredient_type: "vegetable")
  Ingredient.create(name: "Corn", stock: random_stock, ingredient_type: "vegetable")

user = User.create(
  email: "max@max.com",
  password: "123456"
)

[
  {
    name: "Spaghetti Bolognese",
    instructions: "Boil pasta. Cook minced beef with tomatoes. Mix and serve.",
    category: "Italian",
    difficulty: 2,
    servings: 4,
    prep_time: 10,
    cook_time: 30,
    total_time: 40,
    image: "https://c.rewe-static.de/34580294/2/34580294.png?impolicy=rds&im=Resize,height=600;Crop,width=1382,height=600,gravity=Center",
    video: "https://youtu.be/ZUfLsWx2Wkw?feature=shared",
    user_id: user.id
  },
  {
    name: "Chicken Alfredo",
    instructions: "Cook pasta. Sauté chicken. Prepare Alfredo sauce. Mix and serve.",
    category: "Italian",
    difficulty: 2,
    servings: 4,
    prep_time: 15,
    cook_time: 15,
    total_time: 30,
    image: "https://dinnerthendessert.com/wp-content/uploads/2021/05/Chicken-Alfredo-Pasta-5.jpg",
    video: "https://www.youtube.com/watch?v=LPPcNPdq_j4&t=1s",
    user_id: user.id
  },
  {
    name: "Vegetable Stir Fry",
    instructions: "Chop vegetables. Heat oil. Add vegetables and stir fry.",
    category: "Chinese",
    difficulty: 1,
    servings: 2,
    prep_time: 10,
    cook_time: 10,
    total_time: 20,
    image: "https://th.bing.com/th/id/OIP.L4MZS1UXcy-yrqYmp_B_oAHaJQ?rs=1&pid=ImgDetMain",
    video: "https://www.youtube.com/watch?time_continue=1&v=UMPOIuq23Aw&embeds_referring_euri=https%3A%2F%2Fwww.bing.com%2F&embeds_referring_origin=https%3A%2F%2Fwww.bing.com&source_ve_path=MjM4NTE&feature=emb_title",
    user_id: user.id
  },
  {
    name: "Beef Tacos",
    instructions: "Cook beef with spices. Prepare taco shells. Add beef, lettuce, and cheese.",
    category: "Mexican",
    difficulty: 1,
    servings: 4,
    prep_time: 15,
    cook_time: 15,
    total_time: 30,
    image: "https://media1.popsugar-assets.com/files/thumbor/mIr5jUrwZLZ9hDMinxjN_EK687w/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2016/02/18/811/n/37139775/f463dfcafb5f1eb4_Mexican-Shredded-Beef_680px_4/i/Shredded-Beef-Tacos.jpg",
    video: "https://www.youtube.com/watch?v=Iu-mQ-Az0wI",
    user_id: user.id
  }
].each do |item|
  Recipe.create(item)
end


RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Chicken"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Flour"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Butter"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Pepper"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Nutmeg"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "Milk"), recipe: Recipe.find_by(name: "Chicken Alfredo"), quantity: 2)

puts "Seed data for ingredients created successfully!"

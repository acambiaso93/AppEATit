Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

# Array of ingredient types
# ingredient_type = ['vegetable', 'fruit', 'meat', 'dairy', 'grain', 'spice', 'vegan', 'nuts', 'fish']

# puts 'Creating users...'

# 10.times do
#   User.create!(
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password',
#     user_name: Faker::Name.name,
#     diet: %w[vegan vegetarian keto paleo mediterranean raw].sample,
#     location: %w[berlin barcelona london paris rome].sample,
#     description: Faker::Quote.mitch_hedberg
#   )
# end

# puts 'Users created successfully!'

# Helper method to generate a random boolean value for stock
def random_stock
  [true, false].sample
end
# Seed data for ingredients
# Ingredient.create(name: "Chicken", stock: random_stock, ingredient_type: "meat")
# Ingredient.create(name: "Flour", stock: random_stock, ingredient_type: "grain")
# Ingredient.create(name: "Butter", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Pepper", stock: random_stock, ingredient_type: "spice")
# Ingredient.create(name: "Milk", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Nutmeg", stock: random_stock, ingredient_type: "spice")
# Ingredient.create(name: "Beef", stock: random_stock, ingredient_type: "meat")
# Ingredient.create(name: "Parmigiano", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Tofu", stock: random_stock, ingredient_type: "vegan")
# Ingredient.create(name: "Soy Milk", stock: random_stock, ingredient_type: "vegan")
# Ingredient.create(name: "Mozzarella", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Chilli", stock: random_stock, ingredient_type: "spice")
# Ingredient.create(name: "Pork", stock: random_stock, ingredient_type: "meat")
# Ingredient.create(name: "Rice", stock: random_stock, ingredient_type: "grain")
# Ingredient.create(name: "Cream", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Cumin", stock: random_stock, ingredient_type: "spice")
# Ingredient.create(name: "Cheddar", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Curry", stock: random_stock, ingredient_type: "spice")
# Ingredient.create(name: "Prawns", stock: random_stock, ingredient_type: "fish")
# Ingredient.create(name: "CousCous", stock: random_stock, ingredient_type: "grain")
# Ingredient.create(name: "Feta", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Garlic", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Onion", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Cheese", stock: random_stock, ingredient_type: "dairy")
# Ingredient.create(name: "Lettuce", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Tomatoes", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Peppers", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Mushrooms", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Potatoes", stock: random_stock, ingredient_type: "vegetable")
# Ingredient.create(name: "Corn", stock: random_stock, ingredient_type: "vegetable")


user = User.create(
  email: "max@max.com",
  password: "123456",
  diet: "vegetarian",
  description: "Went grocery shopping on an empty stomach so please help me out!!!",
  location: "Berlin",
  profile_picture_url: "https://imgs.search.brave.com/QEgQVIF6OAEUxX0hPkZgF42ViGx71BMhkYXmuNzUSEo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzY5LzAwLzkw/LzM2MF9GXzY5MDA5/MDA1X3Jyd3lzMEt5/VTBPc05rTEdvNzRN/VGp1QmZqeGdBTDRz/LmpwZw"
)

r1 = Recipe.create(
  name: "Spaghetti Bolognese",
  instructions: "Peel onion and garlic and chop finely. Peel carrots and dice finely. Clean and wash the celery and cut it into fine cubes. Heat butter and 1 tablespoon oil in a pan. First fry the carrots in it for two minutes. Then add the onions and celery and fry the vegetables for about 10 minutes over low to medium heat. Add garlic and sauté for 2 minutes. Remove vegetables and set aside.
  Put 1 tablespoon of oil in a large pot and fry the mince until crumbly. Season with paprika, sugar, salt and pepper. Add bay leaf, thyme and the fried vegetables. With wine extinguish. Add tomatoes and stock and simmer over low heat for about 2 hours. Season with salt and pepper. Remove the bay leaf and thyme.
  Cook spaghetti according to package instructions. Drain and serve with the sauce.",
  category: "Italian",
  difficulty: "moderate",
  servings: 4,
  cooking_time: 40,
  image: "https://c.rewe-static.de/34580294/2/34580294.png?impolicy=rds&im=Resize,height=600;Crop,width=1382,height=600,gravity=Center",
  video: "https://youtu.be/ZUfLsWx2Wkw?feature=shared",
  user_id: user.id
)
r1.ingredients << [Ingredient.find_or_create_by(name: "onion", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "garlic", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "carrot", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "butter", stock: random_stock, ingredient_type: "dairy"), Ingredient.find_or_create_by(name: "olive oil", stock: random_stock, ingredient_type: "oil"), Ingredient.find_or_create_by(name: "beef", stock: random_stock, ingredient_type: "meat"), Ingredient.find_or_create_by(name: "paprika powder", stock: random_stock, ingredient_type: "spices"), Ingredient.find_or_create_by(name: "sugar", stock: random_stock, ingredient_type: "sugar"), Ingredient.find_or_create_by(name: "pepper", stock: random_stock, ingredient_type: "spices"),
Ingredient.find_or_create_by(name: "bay leaf", stock: random_stock, ingredient_type: "spices"), Ingredient.find_or_create_by(name: "red wine", stock: random_stock, ingredient_type: "alcohol"), Ingredient.find_or_create_by(name: "diced tomatoes", stock: random_stock, ingredient_type: "preserves"), Ingredient.find_or_create_by(name: "breef broth", stock: random_stock, ingredient_type: "spices"), Ingredient.find_or_create_by(name: "spaghetti", stock: random_stock, ingredient_type: "pasta")]

r2 = Recipe.create(
  name: "Chicken Alfredo",
  instructions: "Cook fettuccini in a large pot of salted water (4 qts water with 1 Tbsp salt,) according to package instructions then drain and set aside.
  Meanwhile, thinly slice chicken breast into strips and season all over with salt and pepper. In a large, deep skillet, heat 2 Tbsp olive oil over medium/high heat and saute chicken until light golden and cooked through (5 min). Remove chicken from the pan and cover to keep warm.
  In the same pan over medium/high, add 1 Tbsp olive oil and 1 Tbsp butter. Add onion and sauté 3 minutes until soft. Add sliced mushrooms and sauté until soft (5-7 min), stirring frequently. Add garlic and sauté another 30 seconds until fragrant, stirring constantly.
  Add half-n-half and simmer over medium/high heat 8-10 min, or until just beginning to thicken. Add chicken back to pan, along with 1/4 cup parsley and season sauce to taste (1/2 to 1 tsp salt and 1/4 tsp pepper).
  Add cooked pasta and stir to combine. Heat another minute until warmed through then turn off the heat, cover and let pasta rest 10-15 minutes then stir to combine and serve garnished with more parsley.
  After the pasta rests, you will have a creamy but light Alfredo sauce that coats the noodles perfectly.",
  category: "Italian",
  difficulty: "moderate",
  servings: 8,
  cooking_time: 30,
  image: "https://dinnerthendessert.com/wp-content/uploads/2021/05/Chicken-Alfredo-Pasta-5.jpg",
  video: "https://www.youtube.com/watch?v=LPPcNPdq_j4&t=1s",
  user_id: user.id
)
r2.ingredients << [Ingredient.find_or_create_by(name: "chicken", stock: random_stock, ingredient_type: "meat"), Ingredient.find_or_create_by(name: "fettuccine", stock: random_stock, ingredient_type: "pasta"), Ingredient.find_or_create_by(name: "white mushrooms", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "onion", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "garlic", stock: random_stock, ingredient_type: "vegetable"), Ingredient.find_or_create_by(name: "parsley", stock: random_stock, ingredient_type: "spices"), Ingredient.find_or_create_by(name: "black pepper", stock: random_stock, ingredient_type: "spices"), Ingredient.find_or_create_by(name: "olive oil", stock: random_stock, ingredient_type: "oil"), Ingredient.find_or_create_by(name: "butter", stock: random_stock, ingredient_type: "dairy") ]


  # {
  #   name: "Vegetable Stir Fry",
  #   instructions: "Boil the noodles: Cook the Fettuccine al dente, according to package instructions.
  #   Cook the chicken: Season the chicken, then pan-fry in oil and butter, for 6 minutes a side, or until an internal temperature reaches 165 degrees F. Transfer to a cutting board and let rest for a few minutes, then cut into 1/2-inch thick slices. Tent with foil, while you prepare the sauce.
  #   Make the Alfredo sauce: Using the same pan you used to cook the chicken, the cream, butter, and seasonings are incorporated and simmered on medium-low heat until thickened, then the Parmesan is added in until melted and smooth.
  #   Assemble: Drain the pasta, reserving some of the liquid to loosen the sauce (only if necessary.) Toss immediately with the Alfredo sauce. Divide the pasta among serving bowls and top with a few slices of cooked chicken. Garnish with parsley, more Parmesan, and black pepper if desired.",
  #   category: "Chinese",
  #   difficulty: "easy",
  #   servings: 2,
  #   cooking_time: 20,
  #   image: "https://th.bing.com/th/id/OIP.L4MZS1UXcy-yrqYmp_B_oAHaJQ?rs=1&pid=ImgDetMain",
  #   video: "https://www.youtube.com/watch?time_continue=1&v=UMPOIuq23Aw&embeds_referring_euri=https%3A%2F%2Fwww.bing.com%2F&embeds_referring_origin=https%3A%2F%2Fwww.bing.com&source_ve_path=MjM4NTE&feature=emb_title",
  #   user_id: user.id
  # },
  # {
  #   name: "Beef Tacos",
  #   instructions: "Cook beef with spices. Prepare taco shells. Add beef, lettuce, and cheese.",
  #   category: "Mexican",
  #   difficulty: "easy",
  #   servings: 4,
  #   cooking_time: 30,
  #   image: "https://media1.popsugar-assets.com/files/thumbor/mIr5jUrwZLZ9hDMinxjN_EK687w/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2016/02/18/811/n/37139775/f463dfcafb5f1eb4_Mexican-Shredded-Beef_680px_4/i/Shredded-Beef-Tacos.jpg",
  #   video: "https://www.youtube.com/watch?v=Iu-mQ-Az0wI",
  #   user_id: user.id
  # }

puts "Seed data for ingredients created successfully!"

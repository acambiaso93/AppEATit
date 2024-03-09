Profile.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all

# Array of ingredient types
# ingredient_types = ['vegetable', 'fruit', 'meat', 'dairy', 'grain', 'spices', 'vegan', 'nuts', 'fish']

# Helper method to generate a random boolean value for stock
def random_stock
  [true, false].sample
end

Ingredient.create(name: "chicken", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "flour", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "butter", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "milk", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "nutmeg", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "beef", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "parmigiano", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "tofu", stock: random_stock, ingredient_type: "vegan")
Ingredient.create(name: "soy milk", stock: random_stock, ingredient_type: "vegan")
Ingredient.create(name: "mozzarella", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "chilli", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "pork", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "rice", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "cream", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "cumin", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "cheddar", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "curry", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "prawns", stock: random_stock, ingredient_type: "fish")
Ingredient.create(name: "cousCous", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "feta", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "garlic", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "onion", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "cheese", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "lettuce", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "tomatoes", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "peppers", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "mushrooms", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "potatoes", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "corn", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "carrot", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "olive oil", stock: random_stock, ingredient_type: "oil")
Ingredient.create(name: "paprika powder", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "sugar", stock: random_stock, ingredient_type: "sugar")
Ingredient.create(name: "pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "bay leaf", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "red wine", stock: random_stock, ingredient_type: "alcohol")
Ingredient.create(name: "diced tomatoes", stock: random_stock, ingredient_type: "preserves")
Ingredient.create(name: "breef broth", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "spaghetti", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "fettuccine", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "white mushrooms", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "parsley", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "black pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "brocoli", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "red bell pepper", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "yellow bell pepper", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "baby corn", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "chestnuts", stock: random_stock, ingredient_type: "nuts")
Ingredient.create(name: "ginger", stock: random_stock, ingredient_type: "root")
Ingredient.create(name: "sesame seeds", stock: random_stock, ingredient_type: "seeds")
Ingredient.create(name: "chicken broth", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "soy sauce", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "cornstarch", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "honey", stock: random_stock, ingredient_type: "sugar")
Ingredient.create(name: "sesame oil", stock: random_stock, ingredient_type: "oil")
Ingredient.create(name: "green bell pepper", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "dry red pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "paprika", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "garlic powder", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "cumin powder", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "coriander", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "lemon", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "tortilla bread", stock: random_stock, ingredient_type: "bread")
Ingredient.create(name: "ricotta", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "lasagne", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "parmesan", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "spinach", stock: random_stock, ingredient_type: "vegetable")

user = User.create!(
  email: "max@max.com",
  password: "123456",
  diet: "vegetarian",
  description: "Went grocery shopping on an empty stomach so please help me out!!!",
  location: "Berlin",
  profile_picture_url: "https://imgs.search.brave.com/QEgQVIF6OAEUxX0hPkZgF42ViGx71BMhkYXmuNzUSEo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzY5LzAwLzkw/LzM2MF9GXzY5MDA5/MDA1X3Jyd3lzMEt5/VTBPc05rTEdvNzRN/VGp1QmZqeGdBTDRz/LmpwZw"
)

user_alex = User.create!(
  email: "alex@lewagon.com",
  password: "alex@lewagon.com",
  diet: "vegetarian",
  description: "Going home and I dont know what to cook and I dont want to go to the supermarkt. Too lazy...",
  location: "Berlin",
  profile_picture_url: "https://www.drawing123.com/wp-content/uploads/2023/03/Drawing-Llama-step-9.jpg"
)

[
  {
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
  },
  {
    name: "Chicken Fettuccine Alfredo",
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
  },
  {
    name: "Vegetable Stir Fry",
    instructions: "Boil the noodles: Cook the Fettuccine al dente, according to package instructions.
    Cook the chicken: Season the chicken, then pan-fry in oil and butter, for 6 minutes a side, or until an internal temperature reaches 165 degrees F. Transfer to a cutting board and let rest for a few minutes, then cut into 1/2-inch thick slices. Tent with foil, while you prepare the sauce.
    Make the Alfredo sauce: Using the same pan you used to cook the chicken, the cream, butter, and seasonings are incorporated and simmered on medium-low heat until thickened, then the Parmesan is added in until melted and smooth.
    Assemble: Drain the pasta, reserving some of the liquid to loosen the sauce (only if necessary.) Toss immediately with the Alfredo sauce. Divide the pasta among serving bowls and top with a few slices of cooked chicken. Garnish with parsley, more Parmesan, and black pepper if desired.",
    category: "Chinese",
    difficulty: "easy",
    servings: 2,
    cooking_time: 20,
    image: "https://th.bing.com/th/id/OIP.L4MZS1UXcy-yrqYmp_B_oAHaJQ?rs=1&pid=ImgDetMain",
    video: "https://www.youtube.com/watch?time_continue=1&v=UMPOIuq23Aw&embeds_referring_euri=https%3A%2F%2Fwww.bing.com%2F&embeds_referring_origin=https%3A%2F%2Fwww.bing.com&source_ve_path=MjM4NTE&feature=emb_title",
    user_id: user_alex.id
  },
  {
    name: "Beef Tacos",
    instructions: "All the instructios you need is on my Youtube Video",
    category: "Mexican",
    difficulty: "easy",
    servings: 4,
    cooking_time: 30,
    image: "https://media1.popsugar-assets.com/files/thumbor/mIr5jUrwZLZ9hDMinxjN_EK687w/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2016/02/18/811/n/37139775/f463dfcafb5f1eb4_Mexican-Shredded-Beef_680px_4/i/Shredded-Beef-Tacos.jpg",
    video: "https://www.youtube.com/watch?v=Iu-mQ-Az0wI",
    user_id: user.id
  },
  {
    name: "Spinach Lasagne",
    instructions: "Preheat the oven to 190°C/375°F/gas 5.
    Melt 50g of the butter in a pan and whisk in the flour. Cook for 1 to 2 minutes, then whisk in the milk till smooth. Season with sea salt and freshly ground black pepper, add the bay leaf and simmer for 5 minutes. Turn off the heat.
    Remove the stalks from the spinach, then wilt with the remaining 20g butter in a covered pan. When wilted, drain, then, when cool enough to handle, squeeze out the liquid.
    Chop the spinach and mix with the ricotta, a ladleful of the white sauce and a good grating of nutmeg. Season.
    In a baking dish, layer the lasagne sheets, white sauce, spinach mixture and a grating of Parmesan. Finish with a layer of pasta topped with sauce and more Parmesan.
    Bake for 30 minutes, or till golden.",
    category: "italian",
    difficulty: "easy",
    servings: 4,
    cooking_time: 50,
    image: "https://img.jamieoliver.com/jamieoliver/recipe-database/2ipm2HQHql2Azq2dLfiA4k.jpg?tr=w-800,h-1066",
    user_id: user_alex.id
  }
].each do |item|
  Recipe.create!(item)
end

# Fettuccine Alfredo
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "chicken"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "flour"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "butter"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "pepper"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "nutmeg"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "milk"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))

#Spinach Lasagne
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "butter"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "flour"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "milk"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "spinach"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "bay leaf"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "ricotta"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "nutmeg"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "lasagne"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "parmesan"), recipe: Recipe.find_by(name: "Spinach Lasagne"))

puts "Seed data for ingredients created successfully!"

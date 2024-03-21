Profile.destroy_all
RecipeIngredient.destroy_all
RecipeCategory.destroy_all
Favorite.destroy_all
Category.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all

require "open-uri"

# Array of ingredient types
# ingredient_types = ['vegetable', 'fruit', 'meat', 'dairy', 'grain', 'spices', 'vegan', 'nuts', 'fish', 'herbs', 'alcohol']

# Helper method to generate a random boolean value for stock
def random_stock
  [true, false].sample
end

# Create Ingredients
Ingredient.create(name: "chicken", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "flour", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "butter", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "milk", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "yogurt", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "nutmeg", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "beef", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "parmigiano", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "tofu", stock: random_stock, ingredient_type: "vegan")
Ingredient.create(name: "soy milk", stock: random_stock, ingredient_type: "vegan")
Ingredient.create(name: "mozzarella", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "chilli", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "pork", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "pancetta", stock: random_stock, ingredient_type: "meat")
Ingredient.create(name: "rice", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "cream", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "cumin", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "cheddar", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "curry", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "prawns", stock: random_stock, ingredient_type: "fish")
Ingredient.create(name: "white fish", stock: random_stock, ingredient_type: "fish")
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
Ingredient.create(name: "bay leaf", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "red wine", stock: random_stock, ingredient_type: "alcohol")
Ingredient.create(name: "diced tomatoes", stock: random_stock, ingredient_type: "preserves")
Ingredient.create(name: "beef broth", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "spaghetti", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "fettuccine", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "white mushrooms", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "parsley", stock: random_stock, ingredient_type: "herbs")
Ingredient.create(name: "black pepper", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "broccoli", stock: random_stock, ingredient_type: "vegetable")
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
Ingredient.create(name: "ricotta", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "lasagne", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "parmesan", stock: random_stock, ingredient_type: "dairy")
Ingredient.create(name: "spinach", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "lemon", stock: random_stock, ingredient_type: "fruit")
Ingredient.create(name: "tortilla", stock: random_stock, ingredient_type: "bread")
Ingredient.create(name: "celery", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "thyme", stock: random_stock, ingredient_type: "herbs")
Ingredient.create(name: "peas", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "green onions", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "avocado", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "oregano", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "coriander", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "garam masala", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "chili", stock: random_stock, ingredient_type: "spices")
Ingredient.create(name: "worcestershire sauce", stock: random_stock, ingredient_type: "Sauce")
Ingredient.create(name: "croutons", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "baking powder", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "marinara sauce", stock: random_stock, ingredient_type: "Sauce")

# Categories

categories = ['Dinner', 'Quick and Easy', 'vegetarian', 'Meat Friendly', 'Salad', 'Vegan', 'Dinner for one', 'Breakfast', 'Snack', 'Side Dish', 'Bakery']

categories.each do |category_name|
  Category.create(name: category_name)
end

# Users

user = User.create!(
  email: "max@max.com",
  password: "123456"
)

user_alex = User.create!(
  email: "alex@lewagon.com",
  password: "alex@lewagon.com"
)

# Profile

profile = Profile.new(
  user_name: "Määäx",
  description: "I wen't shopping on an empty stomach and now my fridge
  is exploding! I need help, what can I cook???",
  diet: "vegetarian",
  location: "Berlin",
  user: user
)
file = URI.open("https://res.cloudinary.com/demurhwoo/image/upload/v1710000131/cld-sample-4.jpg")
profile.photo.attach(io: file, filename: "image", content_type: "image/jpg")
profile.save

profile_alex = Profile.new(
  user_name: "Alex",
  description: "Looking for something to cook and not trying to repeat myself. I have a lot of things at home.",
  diet: "vegetarian",
  location: "Berlin",
  user: user_alex
)
file = URI.open("https://res.cloudinary.com/dooz1tena/image/upload/v1710773200/avocado_profile_i6rguk.jpg")
profile_alex.photo.attach(io: file, filename: "image", content_type: "image/jpg")
profile_alex.save

# Recipes

[
  {
    name: "Spaghetti Bolognese",
    instructions: "Peel onion and garlic and chop finely.<br>
    <br>
    Peel carrots and dice finely.<br>
    <br>
    Clean and wash the celery and cut it into fine cubes.<br>
    <br>
    Heat butter and 1 tablespoon oil in a pan.<br>
    First fry the carrots in it for two minutes. Then add the onions and celery and fry the vegetables for about 10 minutes over low to medium heat. Add garlic and sauté for 2 minutes.<br>
    <br>
    Remove vegetables and set aside.<br>
    <br>
    Put 1 tablespoon of oil in a large pot and fry the mince until crumbly. Season with paprika, sugar, salt and pepper. Add bay leaf, thyme and the fried vegetables.<br>
    <br>
    With wine extinguish. Add tomatoes and stock and simmer over low heat for about 2 hours. Season with salt and pepper. Remove the bay leaf and thyme.<br>
    <br>
    Cook spaghetti according to package instructions. Drain and serve with the sauce.",
    category: "Italian",
    difficulty: "moderate",
    servings: 4,
    cooking_time: 40,
    image: "https://images.ctfassets.net/uexfe9h31g3m/6QtnhruEFi8qgEyYAICkyS/6e36729731887703608f28e92f10cb49/Spaghetti_bolognese_4x3_V2_LOW_RES.jpg?w=2000&h=2000&fm=webp&fit=thumb&q=100",
    video: "https://youtu.be/ZUfLsWx2Wkw?feature=shared",
    user_id: user.id
  },
  {
    name: "Chicken Fettuccine Alfredo",
    instructions: "Cook fettuccini in a large pot of salted water (4 qts water with 1 Tbsp salt,) according to package instructions then drain and set aside.<br>
    <br>
    Meanwhile, thinly slice chicken breast into strips and season all over with salt and pepper. In a large, deep skillet, heat 2 Tbsp olive oil over medium/high heat and saute chicken until light golden and cooked through (5 min). Remove chicken from the pan and cover to keep warm.<br>
    <br>
    In the same pan over medium/high, add 1 Tbsp olive oil and 1 Tbsp butter. Add onion and sauté 3 minutes until soft. Add sliced mushrooms and sauté until soft (5-7 min), stirring frequently. Add garlic and sauté another 30 seconds until fragrant, stirring constantly.<br>
    <br>
    Add half-n-half and simmer over medium/high heat 8-10 min, or until just beginning to thicken. Add chicken back to pan, along with 1/4 cup parsley and season sauce to taste (1/2 to 1 tsp salt and 1/4 tsp pepper).<br>
    <br>
    Add cooked pasta and stir to combine. Heat another minute until warmed through then turn off the heat, cover and let pasta rest 10-15 minutes then stir to combine and serve garnished with more parsley.<br>
    <br>
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
    instructions: "Boil the noodles: Cook the Fettuccine al dente, according to package instructions.<br>
    <br>
    Cook the chicken: Season the chicken, then pan-fry in oil and butter, for 6 minutes a side, or until an internal temperature reaches 165 degrees F. Transfer to a cutting board and let rest for a few minutes, then cut into 1/2-inch thick slices. Tent with foil, while you prepare the sauce.<br>
    <br>
    Make the Alfredo sauce: Using the same pan you used to cook the chicken, the cream, butter, and seasonings are incorporated and simmered on medium-low heat until thickened, then the Parmesan is added in until melted and smooth.<br>
    <br>
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
    instructions: "Preheat the oven to 190°C/375°F/gas 5.<br>
    <br>
    Melt 50g of the butter in a pan and whisk in the flour. Cook for 1 to 2 minutes, then whisk in the milk till smooth. Season with sea salt and freshly ground black pepper, add the bay leaf and simmer for 5 minutes. Turn off the heat.<br>
    <br>
    Remove the stalks from the spinach, then wilt with the remaining 20g butter in a covered pan. When wilted, drain, then, when cool enough to handle, squeeze out the liquid.<br>
    <br>
    Chop the spinach and mix with the ricotta, a ladleful of the white sauce and a good grating of nutmeg. Season.<br>
    <br>
    In a baking dish, layer the lasagne sheets, white sauce, spinach mixture and a grating of Parmesan. Finish with a layer of pasta topped with sauce and more Parmesan.<br>
    <br>
    Bake for 30 minutes, or till golden.",
    category: "italian",
    difficulty: "easy",
    servings: 4,
    cooking_time: 50,
    image: "https://img.jamieoliver.com/jamieoliver/recipe-database/2ipm2HQHql2Azq2dLfiA4k.jpg?tr=w-800,h-1066",
    user_id: user_alex.id
  },
  {
    name: "Chicken Parmesan",
    instructions: "Preheat the oven to 190°C/375°F/gas 5. Season chicken breasts with salt and pepper. Dip chicken in egg, then in breadcrumbs. Heat oil in a skillet over medium heat and cook chicken until golden. Pour marinara sauce over chicken, top with mozzarella and parmesan. Bake for 20 minutes, or till golden.",
    category: "italian",
    difficulty: "moderate",
    servings: 4,
    cooking_time: 40,
    image: "https://hips.hearstapps.com/hmg-prod/images/chicken-parmesan-index-644042afa49de.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
    user_id: user_alex.id
  },
  {
    name: "Pancakes",
    instructions: "In a large bowl, mix flour, sugar, baking powder, and salt. Make a well in the center, and pour in milk, egg, and melted butter. Mix until smooth. Heat a lightly oiled griddle over medium-high heat. Pour batter onto the griddle. Brown on both sides.",
    category: "american",
    difficulty: "easy",
    servings: 4,
    cooking_time: 15,
    image: "https://cafedelites.com/wp-content/uploads/2016/03/3-Ingredient-Pancakes-61.jpg",
    user_id: user_alex.id
  },
  {
    name: "Spaghetti Carbonara",
    instructions: "Cook spaghetti in a large pot of boiling salted water until al dente. Meanwhile, whisk eggs and Parmesan together in a bowl. Cook pancetta in a large skillet over medium heat until crispy. Remove from heat. Add hot pasta to the skillet and toss well to coat in pancetta fat. Still off the heat, add the egg mixture to the skillet and toss well to create a creamy sauce. Season with salt and pepper.",
    category: "italian",
    difficulty: "moderate",
    servings: 4,
    cooking_time: 30,
    image: "https://images.lecker.de/spaghetti-carbonara-f9163702.jpg,id=f74d3b8f,b=lecker,w=1200,rm=sk.webp",
    user_id: user_alex.id
  },
  {
    name: "Chicken Tikka Masala",
    instructions: "Marinate chicken in a mixture of yogurt and tikka masala spice. Heat oil in a large heavy skillet over medium heat. Add chicken, and cook until lightly browned. Stir in tomato sauce and cream. Simmer on low heat until sauce thickens. Serve over hot basmati rice.",
    category: "indian",
    difficulty: "hard",
    servings: 4,
    cooking_time: 60,
    image: "https://theforkedspoon.com/wp-content/uploads/2019/02/Chicken-Tikka-Masala-11.jpg",
    user_id: user_alex.id
  },
  {
    name: "Caesar Salad",
    instructions: "In a large bowl, mix romaine lettuce, croutons, and Parmesan cheese. In a small bowl, whisk together lemon juice, olive oil, egg, Worcestershire sauce, garlic, and black pepper. Pour dressing over salad and toss well.",
    category: "american",
    difficulty: "easy",
    servings: 4,
    cooking_time: 10,
    image: "https://www.allrecipes.com/thmb/H0nufEifTElz_HLuyY0NXFIgn2Y=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/14172-CeasarSaladSupreme-ddmfs-Step4-0912-cca42f7faec7460ea7c83097f3531bcc.jpg",
    user_id: user_alex.id
  },
  {
    name: "Beef Bourguignon",
    instructions: "In a large pot, cook bacon over medium heat until crispy. Remove bacon, and set aside. Brown beef in the hot bacon fat. Remove beef, and set aside. In the same pot, cook onions and carrots until tender. Return beef and bacon to the pot, and add red wine, beef broth, and thyme. Cover and simmer for 2 hours.",
    category: "french",
    difficulty: "hard",
    servings: 4,
    cooking_time: 150,
    image: "https://somuchfoodblog.com/wp-content/uploads/2022/11/beef-bourguinon7.jpg",
    user_id: user_alex.id
  },
  {
    name: "Chicken Fried Rice",
    instructions: "Heat oil in a large skillet over medium heat. Add onion, garlic, peas, and carrots. Cook for 5 minutes. Push vegetables to one side of the skillet. Pour eggs on the other side of skillet and scramble. Mix vegetables and eggs. Stir in rice, cooked chicken, and soy sauce.",
    category: "chinese",
    difficulty: "easy",
    servings: 4,
    cooking_time: 30,
    image: "https://www.recipetineats.com/wp-content/uploads/2019/09/Chicken-Fried-Rice_9.jpg",
    user_id: user_alex.id
  },
  {
    name: "Fish Tacos",
    instructions: "Season fish with salt and pepper, and grill until cooked through. Warm tortillas in the oven. Fill tortillas with fish, cabbage, salsa, and sour cream.",
    category: "mexican",
    difficulty: "easy",
    servings: 4,
    cooking_time: 30,
    image: "https://www.recipetineats.com/wp-content/uploads/2016/05/Fish-Tacos_7.jpg",
    user_id: user_alex.id
  }
].each do |item|
  Recipe.create!(item)
end

# Chicken Fettucine Alfredo
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "chicken"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "flour"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "butter"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "pepper"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "nutmeg"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "milk"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))

RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))


# Spinach Lasagne
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "butter"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "flour"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "milk"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "spinach"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "bay leaf"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "ricotta"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "nutmeg"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "lasagne"), recipe: Recipe.find_by(name: "Spinach Lasagne"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "parmesan"), recipe: Recipe.find_by(name: "Spinach Lasagne"))

RecipeCategory.create(category: Category.find_by(name: "vegetarian"), recipe: Recipe.find_by(name: "Spinach Lasagne"))


# Spaghetti Bolognese
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "onion"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "garlic"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "paprika"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "diced tomatoes"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "olive oil"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "beef"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "butter"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "bay leaf"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "thyme"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "red wine"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "beef broth"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "spaghetii"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))

RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))


# Vegetable Stir Fry
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "olive oil"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "carrot"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "broccoli"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "red bell pepper"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "yellow bell pepper"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "garlic"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "peas"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "corn"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "mushrooms"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "ginger"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "green onions"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "sesame seeds"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "chicken broth"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "cornstarch"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "honey"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "sesame oil"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))

RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
RecipeCategory.create(category: Category.find_by(name: "vegetarian"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))


# Beef Tacos
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "beef"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "green bell pepper"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "yellow bell pepper"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "green bell pepper"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "onion"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "garlic"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "tomatoes"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "coriander"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "cumin powder"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "lemon"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "paprika"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "tortilla"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "pepper"), recipe: Recipe.find_by(name: "Beef Tacos"))

RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Beef Tacos"))

# Chicken Parmesan
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "chicken"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "salt"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "pepper"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "egg"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "croutons"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "oil"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "marinara sauce"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "mozzarella"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeIngredient.create(ingredient: Ingredient.find_by(name: "parmesan"), recipe: Recipe.find_by(name: "Chicken Parmesan"))

RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Chicken Parmesan"))

# Pancakes
pancakes = Recipe.find_by(name: "Pancakes")
["flour", "baking powder", "eggs", "milk", "butter", "sugar", "salt"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: pancakes)
end

RecipeCategory.create(category: Category.find_by(name: "Breakfast"), recipe: Recipe.find_by(name: "Pancakes"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Pancakes"))

# Fish Taco
fish_taco = Recipe.find_by(name: "Fish Taco")
["butter", "lime", "chilli", "garlic", "salt", "white fish", "tortillas", "avocado"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: fish_taco)
end

RecipeCategory.create(category: Category.find_by(name: "Dinner"), recipe: Recipe.find_by(name: "Fish Taco"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Fish Taco"))

# Spaghetti Carbonara
spaghetti_carbonara = Recipe.find_by(name: "Spaghetti Carbonara")
["eggs", "parmesan", "pancetta", "pasta", "garlic", "olive oil"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: spaghetti_carbonara)
end

RecipeCategory.create(category: Category.find_by(name: "Dinner"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))
RecipeCategory.create(category: Category.find_by(name: "Quick and Easy"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))

# Chicken Tikka Masala
chicken_tikka_masala = Recipe.find_by(name: "Chicken Tikka Masala")
["rice", "coriander", "yogurt", "lemon", "garam masala", "cumin", "chili", "ginger", "garlic", "onions", "chicken", "butter", "oil", "tomato"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: chicken_tikka_masala)
end
RecipeCategory.create(category: Category.find_by(name: "Dinner"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))
RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))

# Ceasar Salad
caesar_salad = Recipe.find_by(name: "Caesar Salad")
["lettuce", "croutons", "parmesan cheese", "lemon", "olive oil", "egg", "Worcestershire sauce", "garlic", "black pepper"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: caesar_salad)
end
RecipeCategory.create(category: Category.find_by(name: "Snack"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "Salad"), recipe: Recipe.find_by(name: "Caesar Salad"))

# Beef Bourguignon
beef_bourguignon = Recipe.find_by(name: "Beef Bourguignon")
["beef", "bacon", "salt", "pepper", "onions", "carrots", "red wine", "broth", "thyme"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: beef_bourguignon)
end
RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "Dinner"), recipe: Recipe.find_by(name: "Caesar Salad"))

# Chicken Fried Rice
chicken_fried_rice = Recipe.find_by(name: "Chicken Fried Rice")
["oil", "onion", "garlic", "peas", "carrots", "eggs", "rice", "chicken", "soy sauce"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: chicken_fried_rice)
end
RecipeCategory.create(category: Category.find_by(name: "Meat Friendly"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "Dinner"), recipe: Recipe.find_by(name: "Caesar Salad"))

puts "Seed data for ingredients created successfully!"

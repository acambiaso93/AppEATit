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
Ingredient.create(name: "worcestershire sauce", stock: random_stock, ingredient_type: "sauce")
Ingredient.create(name: "croutons", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "baking powder", stock: random_stock, ingredient_type: "grain")
Ingredient.create(name: "marinara sauce", stock: random_stock, ingredient_type: "sauce")
Ingredient.create(name: "rice paper", stock: random_stock, ingredient_type: "asian")
Ingredient.create(name: "cucumber", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "red cabbage", stock: random_stock, ingredient_type: "vegetable")
Ingredient.create(name: "rice noodles", stock: random_stock, ingredient_type: "pasta")
Ingredient.create(name: "peanut butter", stock: random_stock, ingredient_type: "nuts")
Ingredient.create(name: "sriracha", stock: random_stock, ingredient_type: "sauce")

# Categories

categories = ['dinner', 'quick and easy', 'vegetarian', 'meat friendly', 'salad', 'vegan', 'dinner for one', 'breakfast', 'snack', 'side dish', 'backery']

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
    instructions: "Heat vegetable oil in a large skillet over medium heat.<br>
    <br>
    Add chopped onions and minced garlic to the skillet. Cook until onions are translucent and garlic is fragrant, about 2-3 minutes.<br>
    <br>
    Add ground beef to the skillet. Cook, breaking it apart with a spoon, until it's browned and cooked through, about 5-7 minutes.<br>
    <br>
    Drain excess fat from the skillet if necessary.<br>
    <br>
    Sprinkle taco seasoning mix over the beef. Stir well to combine.<br>
    <br>
    Pour water into the skillet. Stir until the seasoning is evenly distributed and the mixture has thickened slightly, about 2-3 minutes.<br>
    <br>
    Season with salt and pepper to taste.<br>
    <br>
    Warm up taco shells according to package instructions.<br>
    <br>
    Spoon the beef mixture into the taco shells.<br>
    <br>
    Serve tacos with your favorite toppings such as shredded lettuce, diced tomatoes, shredded cheese, sour cream, sliced jalapeños, salsa, chopped cilantro, and lime wedges.<br>
    <br>
    Enjoy your delicious Beef Tacos!",
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
    Melt a bit of the butter in a pan and whisk in the flour. Cook for 1 to 2 minutes, then whisk in the milk till smooth. Season with sea salt and freshly ground black pepper, add the bay leaf and simmer for 5 minutes. Turn off the heat.<br>
    <br>
    Remove the stalks from the spinach, then wilt with the more butter in a covered pan. When wilted, drain, then, when cool enough to handle, squeeze out the liquid.<br>
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
    instructions: "Preheat your oven to 375°F (190°C).<br>
    <br>
    Place the croutons in a resealable plastic bag and crush them into coarse crumbs using a rolling pin or the bottom of a heavy pan.<br>
    <br>
    Season both sides of the chicken breasts with pepper to taste.<br>
    <br>
    Coat each chicken breast in the crushed crouton crumbs, pressing gently to adhere the crumbs to the chicken.<br>
    <br>
    Place the breaded chicken breasts in a baking dish.<br>
    <br>
    Spread marinara sauce evenly over the top of each chicken breast.<br>
    <br>
    Sprinkle shredded mozzarella cheese over the marinara sauce, covering the chicken completely.<br>
    <br>
    Sprinkle grated Parmesan cheese over the mozzarella cheese.<br>
    <br>
    Bake in the preheated oven for 25-30 minutes, or until the chicken is cooked through and the cheese is melted and bubbly.<br>
    <br>
    Remove from the oven and let it rest for a few minutes before serving.<br>
    <br>
    Serve the Chicken Parmesan hot, with additional marinara sauce on the side if desired.<br>
    <br>
    Enjoy your simple and delicious Chicken Parmesan!",
    category: "italian",
    difficulty: "moderate",
    servings: 4,
    cooking_time: 40,
    image: "https://hips.hearstapps.com/hmg-prod/images/chicken-parmesan-index-644042afa49de.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
    user_id: user_alex.id
  },
  {
    name: "Pancakes",
    instructions: "First separate the eggs, putting the whites into one bowl and the yolks into another.<br>
    <br>
    Add the flour, baking powder and milk to the yolks and mix to a smooth thick batter.<br>
    <br>
    Whisk the whites with 1 pinch of sea salt until they form stiff peaks, then fold into the batter, it is now ready to use.<br>
    <br>
    Heat a non-stick pan over a medium heat, pour some of the batter into the pan and cook for a couple of minutes, or until it starts to look golden and firm.<br>
    <br>
    At this point sprinkle your chosen flavouring (see below) onto the uncooked side before loosening with a spatula and flipping the pancake over. Continue frying until both sides are golden.<br>
    <br>
    You can make these pancakes large or small, depending on what you prefer. Serve them with a drizzle of maple syrup, or even with some butter or crème fraîche. If you choose to sprinkle with a flavouring, try one of these... fresh corn from the cob, crispy bacon or pancetta, blueberries, banana, stewed apple, grated chocolate – anything else you can imagine...",
    category: "american",
    difficulty: "easy",
    servings: 4,
    cooking_time: 15,
    image: "https://cafedelites.com/wp-content/uploads/2016/03/3-Ingredient-Pancakes-61.jpg",
    user_id: user_alex.id
  },
  {
    name: "Spaghetti Carbonara",
    instructions: "Cook the spaghetti pasta in a large pot of boiling salted water according to package instructions until al dente. Reserve about 1/2 cup of pasta water before draining.<br>
    <br>
    While the pasta is cooking, heat olive oil in a skillet over medium heat.<br>
    <br>
    Add diced pancetta to the skillet and cook until it's crispy and golden brown, about 5-6 minutes.<br>
    <br>
    Add minced garlic to the skillet and cook for another minute until it's fragrant.<br>
    <br>
    In a bowl, whisk together the eggs and grated Parmesan cheese until well combined.<br>
    <br>
    Once the pasta is cooked, drain it and immediately add it to the skillet with the pancetta and garlic.<br>
    <br>
    Remove the skillet from the heat. Pour the egg and Parmesan mixture over the hot pasta, quickly stirring to coat the pasta evenly. The residual heat will cook the eggs, creating a creamy sauce.<br>
    <br>
    If the sauce is too thick, gradually add a little bit of the reserved pasta water until you reach your desired consistency.<br>
    <br>
    Season the Spaghetti Carbonara with salt and black pepper to taste.<br>
    <br>
    Serve immediately, garnished with additional grated Parmesan cheese if desired.<br>
    <br>
    Enjoy!",
    category: "italian",
    difficulty: "moderate",
    servings: 4,
    cooking_time: 30,
    image: "https://images.lecker.de/spaghetti-carbonara-f9163702.jpg,id=f74d3b8f,b=lecker,w=1200,rm=sk.webp",
    user_id: user_alex.id
  },
  {
    name: "Chicken Tikka Masala",
    instructions: "Cook the rice according to package instructions. Set aside.<br>
    <br>
    In a bowl, mix together yogurt, lemon juice, garam masala, ground cumin, chopped chili, grated ginger, and minced garlic to create the marinade.<br>
    <br>
    Add the chicken pieces to the marinade, ensuring they are evenly coated. Let it marinate for at least 30 minutes, or overnight in the refrigerator for more flavor.<br>
    <br>
    In a large skillet, heat butter and oil over medium heat.<br>
    <br>
    Add chopped onions to the skillet and cook until they are soft and translucent.<br>
    <br>
    Add the marinated chicken (along with the marinade) to the skillet. Cook until the chicken is browned and cooked through, about 8-10 minutes.<br>
    <br>
    Add chopped tomatoes to the skillet and cook for an additional 2-3 minutes until they are softened.<br>
    <br>
    Serve the Chicken Tikka Masala over the cooked rice.<br>
    <br>
    Garnish with fresh coriander leaves.<br>
    <br>
    It's ready to eat. Enjoy!",
    category: "indian",
    difficulty: "hard",
    servings: 4,
    cooking_time: 60,
    image: "https://theforkedspoon.com/wp-content/uploads/2019/02/Chicken-Tikka-Masala-11.jpg",
    user_id: user.id
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
    user_id: user.id
  },
  {
    name: "Chicken Fried Rice",
    instructions: "Heat oil in a large skillet over medium heat. Add onion, garlic, peas, and carrots. Cook for 5 minutes. Push vegetables to one side of the skillet. Pour eggs on the other side of skillet and scramble. Mix vegetables and eggs. Stir in rice, cooked chicken, and soy sauce.",
    category: "chinese",
    difficulty: "easy",
    servings: 4,
    cooking_time: 30,
    image: "https://www.recipetineats.com/wp-content/uploads/2019/09/Chicken-Fried-Rice_9.jpg",
    user_id: user.id
  },
  {
    name: "Fish Tacos",
    instructions: "In a small saucepan, melt the butter over medium heat.<br>
    <br>
    Add minced garlic and chopped chili to the melted butter. Cook for 1-2 minutes until fragrant.<br>
    <br>
    Add the white fish fillets to the saucepan. Squeeze the juice of half a lime over the fish. Sprinkle with salt to taste.<br>
    <br>
    Cook the fish for 3-4 minutes on each side, or until it is cooked through and flakes easily with a fork.<br>
    <br>
    While the fish is cooking, warm the tortillas in a dry skillet or on the grill for about 30 seconds on each side until they are soft and pliable.<br>
    <br>
    Once the fish is cooked, remove it from the skillet and break it into smaller pieces using a fork.<br>
    <br>
    To assemble the tacos, place a few pieces of fish onto each tortilla.<br>
    <br>
    Top the fish with sliced avocado.<br>
    <br>
    Squeeze a little extra lime juice over the tacos if desired.<br>
    <br>
    Serve immediately and enjoy your delicious Fish Tacos!",
    category: "mexican",
    difficulty: "easy",
    servings: 4,
    cooking_time: 30,
    image: "https://www.recipetineats.com/wp-content/uploads/2016/05/Fish-Tacos_7.jpg",
    user_id: user_alex.id
  },
  {
    name: "Summer Rolls",
    instructions: "This is a super easy recipe to do and I am sure you have this ingredients at home.<br>
    <br>
    Prep Your Ingredients: cook the rice noodles according to the package directions and thinly slice all of your vegetables and tofu. Arrange all of the fillings on a large plate or tray for easy access, and set by a bowl of warm water and your rice paper.<br>
    <br>
    Soften the Rice Paper: by soaking it in the bowl of warm (but not too hot) water for 5-10 seconds. I find it easiest to rotate the paper in the bowl in a circular direction, and press the center of the rice paper into the bowl to completely soak it. Carefully remove the rice paper from the water and place onto a plastic or polished wood cutting board.<br>
    <br>
    Fill Your Roll: place any and all of the fillings that you prepared into the center of the rice paper. It’s best to move quickly here, as the rice paper becomes very sticky over time.<br>
    <br>
    Roll it Up: fold each side of the rice paper in towards the center, then fold the bottom portion over the filling, towards the top. Use both hands to compress the roll as you roll it towards the top of the rice paper to completely seal it. Tip: move slowly and carefully lift each side of the rice paper so it does not rip.<br>
    <br>
    Serve and Enjoy: serve as desired. I prefer to serve my summer rolls with peanut sauce or sweet chili sauce. The rolls are best consumed immediately, as they will start to stick together with time. To avoid this you can spray them with a bit of nonstick cooking spray, or sandwich them between salad greens or other veggies so they do not touch each other.<br>",
    category: "asian",
    difficulty: "easy",
    servings: 4,
    cooking_time: 35,
    image: "https://frommybowl.com/wp-content/uploads/2019/07/Vegan_Summer_Rolls_Braised_Tofu_FromMyBowl-14.jpg",
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

RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Chicken Fettuccine Alfredo"))


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

RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Spaghetti Bolognese"))


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

RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Vegetable Stir Fry"))
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

RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Beef Tacos"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Beef Tacos"))

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

RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Chicken Parmesan"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Chicken Parmesan"))

# Pancakes
pancakes = Recipe.find_by(name: "Pancakes")
["flour", "baking powder", "egg", "milk"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: pancakes)
end

RecipeCategory.create(category: Category.find_by(name: "breakfast"), recipe: Recipe.find_by(name: "Pancakes"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Pancakes"))
RecipeCategory.create(category: Category.find_by(name: "vegetarian"), recipe: Recipe.find_by(name: "Pancakes"))


# Fish Taco
fish_taco = Recipe.find_by(name: "Fish Taco")
["butter", "lime", "chilli", "garlic", "salt", "white fish", "tortillas", "avocado"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: fish_taco)
end

RecipeCategory.create(category: Category.find_by(name: "dinner"), recipe: Recipe.find_by(name: "Fish Taco"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Fish Taco"))
RecipeCategory.create(category: Category.find_by(name: "vegetarian"), recipe: Recipe.find_by(name: "Fish Taco"))

# Spaghetti Carbonara
spaghetti_carbonara = Recipe.find_by(name: "Spaghetti Carbonara")
["eggs", "parmesan", "pancetta", "pasta", "garlic", "olive oil"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: spaghetti_carbonara)
end

RecipeCategory.create(category: Category.find_by(name: "dinner"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))
RecipeCategory.create(category: Category.find_by(name: "quick and easy"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))

# Chicken Tikka Masala
chicken_tikka_masala = Recipe.find_by(name: "Chicken Tikka Masala")
["rice", "coriander", "yogurt", "lemon", "garam masala", "cumin", "chili", "ginger", "garlic", "onions", "chicken", "butter", "oil", "tomato"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: chicken_tikka_masala)
end
RecipeCategory.create(category: Category.find_by(name: "dinner"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))
RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Spaghetti Carbonara"))

# Ceasar Salad
caesar_salad = Recipe.find_by(name: "Caesar Salad")
["lettuce", "croutons", "parmesan cheese", "lemon", "olive oil", "egg", "Worcestershire sauce", "garlic", "black pepper"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: caesar_salad)
end
RecipeCategory.create(category: Category.find_by(name: "snack"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "salad"), recipe: Recipe.find_by(name: "Caesar Salad"))

# Beef Bourguignon
beef_bourguignon = Recipe.find_by(name: "Beef Bourguignon")
["beef", "bacon", "salt", "pepper", "onions", "carrots", "red wine", "broth", "thyme"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: beef_bourguignon)
end
RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "dinner"), recipe: Recipe.find_by(name: "Caesar Salad"))

# Chicken Fried Rice
chicken_fried_rice = Recipe.find_by(name: "Chicken Fried Rice")
["oil", "onion", "garlic", "peas", "carrots", "eggs", "rice", "chicken", "soy sauce"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: chicken_fried_rice)
end
RecipeCategory.create(category: Category.find_by(name: "meat friendly"), recipe: Recipe.find_by(name: "Caesar Salad"))
RecipeCategory.create(category: Category.find_by(name: "dinner"), recipe: Recipe.find_by(name: "Caesar Salad"))

# Summer Rolls
summer_rolls = Recipe.find_by(name: "Summer Rolls")
["rice paper", "carrot", "cucumber", "red cabbage", "avocado", "coriander", "rice noodles", "tofu", "soy sauce", "peanut butter", "sriracha"].each do |ingredient_name|
  ingredient = Ingredient.find_by(name: ingredient_name)
  RecipeIngredient.create(ingredient: ingredient, recipe: summer_rolls)
end
RecipeCategory.create(category: Category.find_by(name: "vegetarian"), recipe: Recipe.find_by(name: "Summer Rolls"))
RecipeCategory.create(category: Category.find_by(name: "vegan"), recipe: Recipe.find_by(name: "Summer Rolls"))

puts "Seed data for ingredients created successfully!"

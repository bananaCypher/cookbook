# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
Category.delete_all
starter = Category.create(name: 'Starter', description: 'A small amount of food eaten at the start of a meal before the main part.')
main_course = Category.create(name: 'Main Course', description: 'The main part of a meal.')
dessert = Category.create(name: 'Dessert', description: 'A usually sweet course or dish, as of fruit, ice cream, or pastry, served at the end of a meal.')

# Recipies
Recipe.delete_all
soup = Recipe.new(name: 'Lentil Soup', description: 'Lentil soup is comforting, simple, and easy to throw together with the bare minimum of ingredients.', instructions: "
  In a medium (2- to 3-quart) saucepan or Dutch oven, heat the olive oil over medium heat. Add the carrot, celery, onion, and 1/4 teaspoon salt, stir to combine, then cover and let the vegetables sweat until the onions are soft and translucent, about 5 minutes.\n
  \n
  Add the lentils, water or broth, and bay leaf. Bring up to a boil, then turn the heat down to low and let simmer, covered, until the lentils begin to fall apart, about 20 minutes.\n
  \n
  Turn off the heat, stir in the lemon juice, and add salt to taste. Ladle into bowls and serve. Leftovers will keep refrigerated for 5 days.\n
  ")
soup.category = starter
soup.save

roast_beef = Recipe.new(name: 'Roast Beef', description: 'Roast beef is a signature national dish of England and holds cultural meaning for the English.', instructions: "
  To prepare your beef:\n
  Take your beef out of the fridge 30 minutes before it goes into the oven. Preheat your oven to 240°C/475°F/ gas 9. There’s no need to peel the vegetables – just give them a wash and roughly chop them. Break the garlic bulb into cloves, leaving them unpeeled.\n
  \n
  Pile all the veg, garlic and herbs into the middle of a large roasting tray and drizzle with olive oil. Drizzle the beef with olive oil and season well with salt and pepper, rubbing it all over the meat. Place the beef on top of the vegetables.\n
  \n
  To cook your beef:\n
  Place the roasting tray in the preheated oven. Turn the heat down immediately to 200°C/400°F/gas 6 and cook for 1 hour for medium beef. If you prefer it medium-rare, take it out 5 to 10 minutes earlier. For well done, leave it in for another 10 to 15 minutes.\n
  \n
  If you’re doing roast potatoes and veggies, this is the time to crack on with them – get them into the oven for the last 45 minutes of cooking. Baste the beef halfway through cooking and if the veg look dry, add a splash of water to the tray to stop them burning.\n
  \n
  When the beef is cooked to your liking, take the tray out of the oven and transfer the beef to a board to rest for 15 minutes or so. Cover it with a layer of tinfoil and a tea towel and put aside while you make your gravy, horseradish sauce and Yorkshire puddings.")
roast_beef.category = main_course
roast_beef.save

banofee_pie = Recipe.new(name: 'Banofee Pie', description: 'Arguably the best dessert in the world!.', instructions: "
  melt butter and add crushed biscuits, spread on bottom of tin & chill. boil the tins of condensed milk for 2-2.5 hours. BE SURE THAT THE TINS ARE SUBMERGED IN WATER AT ALL TIMES - OR ELSE YOU WILL BE CLEANING THE CEILING!!!\n
  \n
  when cool spread the toffee over the biscuit base. slice up a couple of ripe bananas on top of toffee whip up the cream and spread over the banana.\n
  \n
  grate some chocolate or even chocolate curls, or drizzle melted chocolate over the top chill (or serve straight away) and serve to very happy people!\n
  \n
  BIG TIP one can boil up a load of tins of condensed milk. once they are cooked they will keep very safely for months in the larder or cupboard. just keep an eye on water levels. this makes it the fastest dessert in town if one has the toffee already. also the biscuit base mix freezes very well.")
banofee_pie.category = dessert
banofee_pie.save

# Ingredients
Ingredient.delete_all
oil = Ingredient.create(name: 'Olive Oil')
carrot = Ingredient.create(name: 'Carrot')
celery = Ingredient.create(name: 'Celery')
onion = Ingredient.create(name: 'Onion')
salt = Ingredient.create(name: 'Salt')
lentils = Ingredient.create(name: 'Lentils')
water = Ingredient.create(name: 'Water')
bay_leaf = Ingredient.create(name: 'Bay Leaf')
lemon_juice = Ingredient.create(name: 'Lemon Juice')
soup.ingredients << [oil, carrot, celery, onion, salt, lentils, water, bay_leaf, lemon_juice] 

beef = Ingredient.create(name: 'Beef')
garlic = Ingredient.create(name: 'Garlic')
pepper = Ingredient.create(name: 'Pepper')
roast_beef.ingredients << [beef, onion, carrot, celery, garlic, bay_leaf, oil, salt, pepper]

biscuit = Ingredient.create(name: 'Degestive Biscuit')
butter = Ingredient.create(name: 'Butter')
condensed_milk = Ingredient.create(name: 'Condensed Milk')
double_cream = Ingredient.create(name: 'Double Cream')
banana = Ingredient.create(name: 'Banana')
chocolate = Ingredient.create(name: 'Chocolate')
banofee_pie.ingredients << [biscuit, butter, condensed_milk, double_cream, banana, chocolate]

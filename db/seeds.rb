# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
Category.delete_all
Category.create(name: 'Starter', description: 'A small amount of food eaten at the start of a meal before the main part.')
Category.create(name: 'Main Course', description: 'The main part of a meal.')
Category.create(name: 'Dessert', description: 'A usually sweet course or dish, as of fruit, ice cream, or pastry, served at the end of a meal.')
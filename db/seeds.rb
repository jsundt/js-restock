# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create( title: 'Bathroom', icon: 'cat__bathroom' )
Item.create( title: 'Toilet Paper', icon: 'item__toiletpaper', category_id: '1' )
Item.create( title: 'Toothpaste', icon: 'item__toothpaste', category_id: '1' )
Item.create( title: 'Shampoo', icon: 'item__shampoo', category_id: '1' )
Item.create( title: 'Shaving Gel', icon: 'item__shavinggel', category_id: '1' )



Category.create( title: 'Kitchen', icon: 'cat__kitchen' )
Item.create( title: 'Spices', icon: 'item__spices', category_id: '2' )
Item.create( title: 'Olive Oil', icon: 'item__oliveoil', category_id: '2' )
Item.create( title: 'Fairy', icon: 'item__fairy', category_id: '2' )
Item.create( title: 'pasta', icon: 'item__pasta', category_id: '2' )



Category.create( title: 'Misc', icon: 'cat__misc' )
Item.create( title: 'Lightbulb', icon: 'item__lightbulb', category_id: '3' )
Item.create( title: 'Washing Powder', icon: 'item__washingpowder', category_id: '3' )
Item.create( title: 'Garbadge Bags', icon: 'item__garbagebags', category_id: '3' )
Item.create( title: 'Utilities', icon: 'item__utilities', category_id: '3' )



Category.create( title: 'Food', icon: 'cat__food' )
Item.create( title: 'Cereal', icon: 'item__cereal', category_id: '4' )
Item.create( title: 'Bacon', icon: 'item__bacon', category_id: '4' )
Item.create( title: 'Eggs', icon: 'item__eggs', category_id: '4' )
Item.create( title: 'Fries', icon: 'item__fries', category_id: '4' )



Category.create( title: 'Drinks', icon: 'cat__drinks' )
Item.create( title: 'Milk', icon: 'item__milk', category_id: '5' )
Item.create( title: 'Soda Pop', icon: 'item__soda', category_id: '5' )
Item.create( title: 'Juice', icon: 'item__juice', category_id: '5' )
Item.create( title: 'Beer', icon: 'item__beer', category_id: '5' )



Category.create( title: 'Meals', icon: 'cat__meals' )
Item.create( title: 'Mexican', icon: 'item__mexican', category_id: '6' )
Item.create( title: 'Steaks', icon: 'item__steak', category_id: '6' )
Item.create( title: 'Italian', icon: 'item__italian', category_id: '6' )
Item.create( title: 'Chicken', icon: 'item__chicken', category_id: '6' )



Category.create( title: 'Snacks', icon: 'cat__snacks' )
Item.create( title: 'Ice Cream', icon: 'item__icecream', category_id: '7' )
Item.create( title: 'Cookies', icon: 'item__cookie', category_id: '7' )
Item.create( title: 'Fruit', icon: 'item__fruit', category_id: '7' )
Item.create( title: 'Candy', icon: 'item__candy', category_id: '7' )
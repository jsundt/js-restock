# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create( title: 'Bathroom', icon: 'cat__misc' )
Category.create( title: 'Kitchen', icon: 'cat__misc' )
Category.create( title: 'Food', icon: 'cat__misc' )
Category.create( title: 'Misc', icon: 'cat__misc' )

Item.create( title: 'Shampoo', icon: 'item__misc', category_id: '1' )
Item.create( title: 'Soap', icon: 'item__misc', category_id: '1' )
Item.create( title: 'Toothpaste', icon: 'item__misc', category_id: '1' )
Item.create( title: 'Toilet Paper', icon: 'item__misc', category_id: '1' )
Item.create( title: 'Spices', icon: 'item__misc', category_id: '2' )
Item.create( title: 'Fairy', icon: 'item__misc', category_id: '2' )
Item.create( title: 'Milk', icon: 'item__misc', category_id: '3' )
Item.create( title: 'Cereal', icon: 'item__misc', category_id: '3' )
Item.create( title: 'Snacks', icon: 'item__misc', category_id: '3' )
Item.create( title: 'Dinner', icon: 'item__misc', category_id: '3' )
Item.create( title: 'Lightbulb', icon: 'item__misc', category_id: '4' )
Item.create( title: 'Washing Powder', icon: 'item__misc', category_id: '4' )
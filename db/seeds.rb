# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create( title: 'Bathroom', icon: 'cat__bathroom' )
Category.create( title: 'Kitchen', icon: 'cat__kitchen' )
Category.create( title: 'Food', icon: 'cat__food' )
Category.create( title: 'Misc', icon: 'cat__misc' )


Item.create( title: 'Test 1', icon: 'cat__misc', category_id: '1' )
Item.create( title: 'Random', icon: 'cat__misc', category_id: '2' )
Item.create( title: 'Testing 1 2 3', icon: 'cat__misc', category_id: '3' )
Item.create( title: 'Loading...', icon: 'cat__misc', category_id: '4' )
Item.create( title: 'hej hopp', icon: 'cat__misc', category_id: '3' )
Item.create( title: 'alle i hopa', icon: 'cat__misc', category_id: '2' )

Item.create( title: 'Trenger denne', icon: 'cat__misc', category_id: '1', stock: '1' )
Item.create( title: 'Mangler dette', icon: 'cat__misc', category_id: '4', stock: '1' )
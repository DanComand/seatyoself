# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.create!(
	[
		{name: "Taco Palace", opening: 10, closing: 23},
		{name: "Pizza Planet", opening: 10, closing: 23},
		{name: "Taj Mah-All-You-Can-Eat", opening: 10, closing: 23},
		{name: "Frying Dutchman", opening: 10, closing: 23},
	]


)

User.create!(

	firstname: "Dan",
	lastname: "Comand",
	email: "dcomand@gmail.com",
	password: "123456"

	)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BreadName.transaction do 
	BreadName.delete_all
	BreadName.create(city_name: "Manchester", bread_name: "Barm")
	BreadName.create(city_name: "Liverpool", bread_name: "Barmcake")
end
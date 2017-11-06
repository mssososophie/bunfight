# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BreadName.transaction do 
	BreadName.delete_all
	# [
	# 	["Manchester", "Barm"],
	# 	["Liverpool", "Barmcake"],
	# ].map{|city, bread|
	# 	BreadName.create(city_name: city, bread_name: bread)	
	# }
	BreadName.create(city_name: "Manchester", bread_name: "Barm")
	BreadName.create(city_name: "Liverpool", bread_name: "Barmcake")
	BreadName.create(city_name: "Birmingham", bread_name: "Roll")
	BreadName.create(city_name: "Whitehaven", bread_name: "Teacake")
	BreadName.create(city_name: "Newcastle", bread_name: "Stottie or a Stottie cake")
	BreadName.create(city_name: "Whitehaven", bread_name: "Teacake")
	BreadName.create(city_name: "Leeds", bread_name: "Breadcake")
	BreadName.create(city_name: "Coventry", bread_name: "Batch")
	BreadName.create(city_name: "Bury", bread_name: "Teacake")
	BreadName.create(city_name: "Belfast", bread_name: "Bap")
	BreadName.create(city_name: "Southport", bread_name: "Barm")
	BreadName.create(city_name: "Oxford", bread_name: "Roll")
	BreadName.create(city_name: "Exeter", bread_name: "Bap")
	BreadName.create(city_name: "Huddersfield", bread_name: "Teacake")
	BreadName.create(city_name: "Middlesbrough", bread_name: "Bun")
	BreadName.create(city_name: "London", bread_name: "Bun")
	BreadName.create(city_name: "Glasgow", bread_name: "Piece")
	BreadName.create(city_name: "Warrington", bread_name: "Bun")
	BreadName.create(city_name: "Bristol", bread_name: "Roll")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatalogItem.create(title: "Branding for Startups",
	description: "Learn how to quickly develop a working brand strategy using a simple process and intuitive model.",
	date: Date.parse("21-05-2018"),
	start_time: Time.parse("19:30"),
	end_time: Time.parse("21:30"))

CatalogItem.create(title: "Python Programming 101",
	description: "In this class, you’ll how to get started with Python, what advantages and disadvantages Python provides as a programming language, and the essentials of programming in Python.",
	date: Date.parse("30-07-2018"),
	start_time: Time.parse("18:00"),
	end_time: Time.parse("20:00"))

CatalogItem.create(title: "Basics of Scrum",
	description: "Learn the basics of this popular project management framework.",
	date: Date.parse("06-08-2018"),
	start_time: Time.parse("15:30"),
	end_time: Time.parse("16:30"))

CatalogItem.create(title: "Travel Writing Workshop",
	description: "Learn the key elements involved in travel writing from award-winning travel and lifestyle.",
	date: Date.parse("09-08-2018"),
	start_time: Time.parse("13:00"),
	end_time: Time.parse("14:30"))
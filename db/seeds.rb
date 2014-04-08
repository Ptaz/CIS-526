# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Club.delete_all

Club.create!(title: 'Game Development Club',
	description:
		%{<p>
			The Game Development Club, or GDC for short, is a club that 
			focuses on developing all types of games in any programming 
			language. We have several group working on a wide variety of 
			games. Feel free to join us on wednesdays nights at Nichols 
			126. You are welcome to join in or create a new project on 
			your own. We have lots of experienced people who can help you 
			get started!
		  </p>},
	image_url: 'ksu.jpg')
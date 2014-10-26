# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.new
post1.title = "Bagel, Yummm" 
post1.kind = "image"
post1.content = "http://tahinitoo.files.wordpress.com/2012/10/bagels-02.jpg?w=584&h=390"
post1.save

2.times do 
	post1.hearts.create
end	

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
User.destroy_all
Comment.destroy_all
PostCategory.destroy_all
Category.destroy_all

post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
category1 = post1.categories.build(name: "Cool")
category2 = post1.categories.build(name: "Groovy")


post2 = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
category3 = post2.categories.build(name: "Awesome")

user1 = User.create(username: 'RealBigFish')
user2 = User.create(username: 'CoolGuy5')

comment1 = post2.comments.build(content: "Great Post!", user: user1)
comment2 = post1.comments.build(content: "Neat Post!", user: user2)

post1.save
post2.save

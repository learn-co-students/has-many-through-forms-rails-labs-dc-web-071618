# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create(
  [
    {name: 'Funny'},
    {name: 'Serious'},
    {name: 'Exhausted'},
    {name: 'Ecstatic'}
  ]
)

users = User.create(
  [
    {username: 'cool_dude_1', email: 'email1'},
    {username: 'cool_dude_33', email: 'email2'},
    {username: 'boring_dude', email: 'email3'},
  ]
)

posts = Post.create(
  [
    {title: 'New Title', content: 'Hello World'},
    {title: 'Please Work', content: 'Please'},
    {title: 'Trying Again', content: 'Ugh...'},
    {title: 'Life Story', content: 'It all began...'}
  ]
)

comments = Comment.create(
  [
    {content: 'this post sucks bro', user: users[0], post: posts[0]},
    {content: 'congrats on a great post man!', user: users[2], post: posts[2]},
    {content: 'a riveting tale...tail?', user: users[1], post: posts[3]},
    {content: 'you are so brave', user: users[2], post: posts[1]},
    {content: 'your life sounds boring bro', user: users[0], post: posts[3]}
  ]
)

post_categories = PostCategory.create(
  [
    {post: posts[0], category: categories[0]},
    {post: posts[0], category: categories[1]},
    {post: posts[1], category: categories[2]},
    {post: posts[1], category: categories[3]},
    {post: posts[2], category: categories[3]},
    {post: posts[2], category: categories[0]},
    {post: posts[3], category: categories[1]},
    {post: posts[3], category: categories[3]}
  ]
)

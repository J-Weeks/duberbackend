# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(last_name: 'Schmidt',first_name: 'Amanda', password: 'password', email: 'person@email.com', address: '123 fake street', description: 'Some dog stuff', url:"https://pbs.twimg.com/profile_images/492447774932467716/lOQ1rCoW_400x400.jpeg")
# u2 = User.create(url:'image.com', last_name: 'Lydon',first_name: 'Christine', password: 'password', email: 'person2@email.com', address: '333 fake street', description: 'Some other dog stuff')

d1 = u1.dogs.create(name: 'FirstyDoggie', description: 'A good dog', breed: 'Grayhound', size: 'Large', note: 'Calm and relaxed', url:"http://spenglercounseling.com/wp-content/uploads/2013/01/Cute-puppy.jpg", rating:4)
d2 = u1.dogs.create(name: 'SecondyDoggie', description: 'A kinda goo dog', breed: 'Shitzu', size: 'Small', note: 'Crazy and out of control', url:"http://spenglercounseling.com/wp-content/uploads/2013/01/Cute-puppy.jpg", rating:4)

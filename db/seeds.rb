# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(url:'image.com', last_name: 'Schmidt',first_name: 'Amanda', password: 'password', email: 'person@email.com', address: '123 fake street', description: 'Some dog stuff')
# u2 = User.create(url:'image.com', last_name: 'Lydon',first_name: 'Christine', password: 'password', email: 'person2@email.com', address: '333 fake street', description: 'Some other dog stuff')

d1 = u1.dogs.create(name: 'Firsty', description: 'A good dog')
d2 = u1.dogs.create(name: 'Secondy', description: 'A good very dog')

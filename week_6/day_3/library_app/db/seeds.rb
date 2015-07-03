# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all

p1 = Person.create(name: 'Jen Mah')
p2 = Person.create(name: 'John Doe')

pr1 = Profile.create(email: 'jen.mah@hotmail.com', number: 1967)
pr2 = Profile.create(email: 'johndoe@gmail.com', number: 1453)


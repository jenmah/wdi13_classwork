# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.delete_all

student1 = Student.create!(name: 'Mathilda Thompson', twitter: '@mathilda', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', phone_number: '09876543212', email: 'mathilda@generalassemb.ly')

student2 = Student.create!(name: 'Lauren Spencer', twitter: '@lauren', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', phone_number: '09876543212', email: 'lauren@generalassemb.ly')

student3 = Student.create!(name: 'James Bennett', twitter: '@james', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', phone_number: '09876543212', email: 'james@generalassemb.ly')

student4 = Student.create!(name: 'Jeremy Marer', twitter: '@jermey', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', phone_number: '09876543212', email: 'jeremey@generalassemb.ly')

puts 'seeded!'
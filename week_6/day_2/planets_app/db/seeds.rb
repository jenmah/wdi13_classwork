# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Planet.delete_all

p1 = Planet.create(name: 'Jupiter', moons: 63, mass: 34443423, image: 'http://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg')

p2 = Planet.create(name: 'Saturn', moons: 62, mass: 503423, image: 'http://upload.wikimedia.org/wikipedia/commons/8/8a/Saturn,_its_rings,_and_a_few_of_its_moons.jpg')

p3 = Planet.create(name: 'Pluto', moons: 5, mass: 10423, image: 'http://cdn1.sciencefiction.com/wp-content/uploads/2014/10/pluto.png')

p4 = Planet.create(name: 'Mars', moons: 2, mass: 859423, image: 'https://readbykevin.files.wordpress.com/2014/09/mars.jpg')


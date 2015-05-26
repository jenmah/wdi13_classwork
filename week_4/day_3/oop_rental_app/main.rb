require 'pry'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'tenant.rb'


building_one = Building.new floors: 5, addres: 'WDI Heights, 1 GA Road, GAVille', num_of_apartments: 15, age: 100, concierge: true

apartment_one = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 3, bathrooms: 2
apartment_two = Apartment.new price: 1900, occupied: false, balcony: true, sqft: 1800, bedrooms: 2, bathrooms: 1
apartment_three = Apartment.new price: 710, occupied: false, balcony: false, sqft: 800, bedrooms: 1, bathrooms: 1


tenant_one = Tenant.new name: 'Jen', age: 26, sex: 'female'
tenant_two = Tenant.new name: 'Alex', age: 25, sex: 'male'
tenant_three = Tenant.new name: 'Florian', age: 28, sex: 'male'
tenant_four = Tenant.new name: 'Sead', age: 28, sex: 'male'


[apartment_one, apartment_two, apartment_three].each { |appt|
  building_one.apartments << appt }

apartment_one.tenants << tenant_one
apartment_two.tenants << tenant_two << tenant_four
apartment_three.tenants << tenant_three





#this also works like the code above
# [apartment_one, apartment_two, apartment_three].each do |appt|
#   building_one.apartments << appt
# end

#this also works like the code above, but may grow much longer
# building_one.apartments << apartment_one << apartment_two << apartment_three

binding.pry
nil
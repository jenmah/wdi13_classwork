# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.delete_all
Product.delete_all
OrderProduct.delete_all
Customer.delete_all

# Create customer objects
c1 = Customer.create(name: 'Jen Mah')
c2 = Customer.create(name: 'Mathilda Thompson')
c3 = Customer.create(name: 'Sam Jones')

# Create product objects
p1 = Product.create(name: 'toothpaste')
p2 = Product.create(name: 'grapes')
p3 = Product.create(name: 'sushi')
p4 = Product.create(name: 'nintendo')

# Method 1
o1 = c1.orders.create(order_reference: 'fj#4fdgh', amount: 200)

# Method 2
o2 = Order.create(order_reference: 'fj#4ddra', amount: 300, customer_id: c1.id)

# Method 3
o3 = Order.create(order_reference: 'fj#4plfg', amount: 700)
o3.customer_id = c1.id
o3.save


# Assign products to orders - creating order_product objects and saving thme to the database
o1.order_products.create(product_id: p1.id)
o1.order_products.create(product_id: p3.id)
o3.order_products.create(product_id: p4.id)

p1.order_products.create(order_id: o3.id)

# Creating a profile object and assigning it to a customer

# Method 1
pr1 = Profile.create(twitter_handle: 'jen mah', email: 'jen.mah@hotmail.com')
pr1.customer_id = c1.id
pr1.save

# Method 2
pr2 = Profile.create(twitter_handle: 'alex ascherson', email: 'aascherson@gmail.com')



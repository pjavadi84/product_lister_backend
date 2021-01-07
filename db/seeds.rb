# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#PRODUCTS
Product.destroy_all
product1 = Product.create({:name=>"DumblesPro - 5 Kit Set", :price=>125.55, :quantity_on_hand=>53, :description=>"best product for personal use. I can't believe it is FDA approved"})
product2 = Product.create({:name=>"JuicerMax7", :price=>295.34, :quantity_on_hand=>3, :description=>"This blender can blend literall anything! even metals"})
product3 = Product.create({:name=>"Sour Diesel - 1 Roll", :price=>35.00, :quantity_on_hand=>0, :description=>"This roll flies off the shelf because of its high potency"})
product4 = Product.create({:name=>"Mercedes G-Vagon AMG", :price=>185000, :quantity_on_hand=>3, :description=>"If you can dream it, you can afford this beauty"})
product5 = Product.create({:name=>"mcBook Pro M1 chip", :price=>2000.00, :quantity_on_hand=>6, :description=>"Best computer laptop on the market. Underpriced just for the serious buyer!!!"})


puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price:#{product1.price} Quantity available: #{product1.quantity_on_hand} Description: #{product1.description}"
puts "Product2: #{product2.name} price:#{product2.price} Quantity available: #{product2.quantity_on_hand} Description: #{product2.description}"
puts "Product3: #{product3.name} price:#{product3.price} Quantity available: #{product3.quantity_on_hand} Description: #{product3.description}"
puts "Product4: #{product4.name} price:#{product4.price} Quantity available: #{product4.quantity_on_hand} Description: #{product4.description}"
puts "Product5: #{product5.name} price:#{product5.price} Quantity available: #{product5.quantity_on_hand} Description: #{product5.description}"

#SHOPPING_CART
ShoppingCart.destroy_all
puts "\nTotal shoppingcart count: #{ShoppingCart.all.count}"
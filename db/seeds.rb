# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category1 = Category.create name: 'Electronics'
category2 = Category.create name: 'Clothes'
category3 = Category.create name: 'Furnitures'

Product.create name: 'Xiaomi A2', price: '5777', category: category1, discount: 0.0, quantity: 10
Product.create name: 'Samsung A7', price: '6000', category: category1, discount: 0.0, quantity: 12

Product.create name: 'Sweet Pants', price: '200', category: category2, discount: 10.0, quantity: 100
Product.create name: 'T-Shirt', price: '150', category: category2, discount: 30.0, quantity: 100

Product.create name: '3 Piece Davos Charcoal Sofa Sectional', price: '8000', category: category3, discount: 10.0, quantity: 10
Product.create name: 'Mercury Kaylee Swivel Glider', price: '5500', category: category3, discount: 30.0, quantity: 10

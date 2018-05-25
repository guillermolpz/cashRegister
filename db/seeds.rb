# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create! id: 1, name: "Banana", price: 0.49, active: true
Product.create! id: 2, name: "Apple", price: 0.29, active: true
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Order.delete_all
Order.create! id: 1, subtotal: 336.00, tax: 64.00, shipping: 1.0, total: 400.00, tipo_pago: "Tarjeta", order_status_id: 2
Order.create! id: 2, subtotal: 168.00, tax: 32.00, shipping: 1.0, total: 200.00, tipo_pago: "Tarjeta", order_status_id: 3
Order.create! id: 3, subtotal: 250.00, tax: 40.00, shipping: 2.0, total: 290, tipo_pago: "Efectivo", order_status_id: 1

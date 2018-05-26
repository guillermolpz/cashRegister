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

# Initialize first account admin:
   User.create! do |u|
       u.email         = 'admin@tapioca.com'
       u.password      = 'admin@01'
       u.name          = 'administrador'
       u.username      = 'admin'
       u.roles_mask    = 1
       u.accountStatus = 'active'
   end

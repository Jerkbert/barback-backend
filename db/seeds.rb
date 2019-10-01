# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


forteleza = Product.create(name: 'Forteleza Blanco', size: '750ml', price: '35.55', product_type: "agave")
limejuice = Product.create(name: 'Lime Juice', size: '32oz', price: '5.00', product_type: "non_alc")
agavesyrup = Product.create(name: 'Agave syrup', size: '32oz', price: '10.00', product_type: 'non_alc')


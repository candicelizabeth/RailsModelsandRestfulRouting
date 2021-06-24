# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shoe.create([
    {name:"Nike", color:"Green", condition:"New", price:99.99},
    {name:"Adidas", color:"Pink", condition:"Old", price:5.99},
    {name:"Nike", color:"Red", condition:"New", price:299.99}
    ])
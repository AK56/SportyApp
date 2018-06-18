# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Creating intial record for Organization: 
Organization.create!(name: 'Rocklin High', address: {street: '1 Sports Lane', city: 'Rocklin', state: 'CA', zip: '95765'})

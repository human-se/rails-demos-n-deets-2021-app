# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.create!(
  make: 'Dodge',
  model: 'Viper',
  color: 'Blue',
  year: 1994,
  price: 30700.70
)

Car.create!(
  make: 'Chevy',
  model: 'Equinox',
  color: 'Gold',
  year: 2015,
  price: 8327.99
)

Car.create!(
  make: 'Tesla',
  model: 'Model X',
  color: 'Black',
  year: 2020,
  price: 77641.00
)

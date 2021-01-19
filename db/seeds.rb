# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BasketBallPlayer.create!(
  first_name: 'D.J.',
  last_name: 'Jeffries',
  position: 'Forward',
  height_inches: 79,
  weight_lbs: 215
)

BasketBallPlayer.create!(
  first_name: 'Deandre',
  last_name: 'Williams',
  position: 'Forward',
  height_inches: 81,
  weight_lbs: 190
)

BasketBallPlayer.create!(
  first_name: 'Moussa',
  last_name: 'Cisse',
  position: 'Center',
  height_inches: 82,
  weight_lbs: 220
)

BasketBallPlayer.create!(
  first_name: 'Landers',
  last_name: 'Nolley II',
  position: 'Guard',
  height_inches: 79,
  weight_lbs: 220
)

BasketBallPlayer.create!(
  first_name: 'Lester',
  last_name: 'Quinones',
  position: 'Guard',
  height_inches: 77,
  weight_lbs: 205
)

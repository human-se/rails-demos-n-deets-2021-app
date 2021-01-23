# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.create!(
  title: 'Prepare Q1 2022 Presentation',
  description: 'Presentation on quarterly profits for 2022',
  due_date: Date.new(2022, 4, 18)
)

Todo.create!(
  title: 'Jimmy Jr. Soccer Game',
  description: 'Jimmy Jr. has a soccer game against the Rivertown Raviolis. If I miss it he\'ll be sad.',
  due_date: Date.new(2021, 11, 2)
)

Todo.create!(
  title: 'Take the Dog to the Vet',
  description: 'Newton has a checkup at the vet',
  due_date: Date.new(2021, 11, 5)
)

Todo.create!(
  title: 'Defuse Bomb',
  description: 'There is a bomb taped to the underside of my car. I should figure out how to disarm that.',
  due_date: Date.new(2025, 3, 14)
)

Todo.create!(
  title: 'Fix Sink',
  description: 'Someone clogged the sink. Not pointing fingers. Brian.',
  due_date: Date.new(2021, 1, 3)
)

Todo.create!(
  title: 'Delouse the House',
  description: 'There are so many lice. Why are there so many lice? My god help me there are so many.',
  due_date: Date.new(2021, 2, 16)
)

Todo.create!(
  title: 'De-Snake Boot',
  description: 'There\'s a snake in my boot!',
  due_date: Date.new(2021, 4, 22)
)

Todo.create!(
  title: 'The Claw',
  description: 'I have been chosen. Farewell my friends! I go on to a better place!',
  due_date: Date.new(2026, 6, 24)
)

Todo.create!(
  title: 'Visit Duckburg',
  description: 'There\'s racecars, lasers, aeroplanes! It\'s a duck blur!',
  due_date: Date.new(2022, 5, 5)
)

Todo.create!(
  title: 'Rescue the Princess',
  description: 'There\'s a princess in a tower. Why is she in a tower? Why can\'t she get down???',
  due_date: Date.new(2021, 1, 14)
)

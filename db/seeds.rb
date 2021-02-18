# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

q1 = Quiz.create!(
  title: 'American History 1',
  description: 'American History 1776 - 1800'
)

q2 = Quiz.create!(
  title: 'Chemistry - Element Names',
  description: 'Names of all of the elements of the periodic table'
)

q3 = Quiz.create!(
  title: 'Math - Algebra 2',
  description: 'Completing the Square to solve equations'
)

q4 = Quiz.create!(
  title: 'English Literature 1',
  description: 'English Literature before 1850'
)

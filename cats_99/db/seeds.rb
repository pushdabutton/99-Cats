# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

molly = Cat.create!(birth_date: '11 December 1999', name: 'Molly', color: 'grey', sex: :f, description: 'total sweetheart')
chloe = Cat.create!(birth_date: '29 August 2007', name: 'Chloe', color: 'calico', sex: :f, description: 'total cutie')
nina = Cat.create!(birth_date: '29 August 1921', name: 'Nina', color: 'white', sex: :f, description: 'ancient cat')

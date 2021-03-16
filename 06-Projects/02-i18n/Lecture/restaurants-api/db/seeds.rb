# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

toto = User.create!(email: "toto@example.com", password: 'azerty')
titi = User.create!(email: "titi@example.com", password: 'azerty')
tata = User.create!(email: "tata@example.com", password: 'azerty')

Restaurant.create!([
  {
    name: "name1",
    address: "address1",
    user: toto
  },
  {
    name: "name2",
    address: "address2",
    user: toto
  },
  {
    name: "name3",
    address: "address3",
    user: toto
  },
  {
    name: "name4",
    address: "address4",
    user: titi
  },
  {
    name: "name5",
    address: "address5",
    user: titi
  },
])

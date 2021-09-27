# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jenny = User.create(username: "jennyjellybeans")
janedoe = User.create(username: "janedoe")

fall = Collection.create(name: "Fall 2021", user_id: 1)
vibes = Collection.create(name: "vibey illustrations", user_id: 1)
doges = Collection.create(name: "Cute Doggos", user_id: 1)
random = Collection.create(name: "Random Sample", user_id: 2)


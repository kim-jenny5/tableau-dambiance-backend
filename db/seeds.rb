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

# 8.times do |x|
#     fall.pictures.attach(io: File.open(Rails.root.join(`public/fall/fall#{x+1}.jpeg`)), filename: `fall#{x+1}.jpeg`)
# end

# 6.times do |x|
#     vibes.pictures.attach(io: File.open(Rails.root.join(`public/vibes/vibe#{x+1}.jpeg`)), filename: `vibe#{x+1}.jpeg`)
# end

# 6.times do |x|
#     doges.pictures.attach(io: File.open(Rails.root.join(`public/dogs/dog#{x+1}.jpeg`)), filename: `dog#{x+1}.jpeg`)
# end

# 7.times do |x|
#     random.pictures.attach(io: File.open(Rails.root.join(`public/random/random#{x+1}.jpeg`)), filename: `random#{x+1}.jpeg`)
# end


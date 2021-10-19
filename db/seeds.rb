# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'aws-sdk-s3'
# s3 = Aws::S3::Resource.new(region: 'us-east-1')

jenny = User.create(username: "jennyjellybeans")
janedoe = User.create(username: "janedoe")

fall = Collection.create(name: "Fall 2021", user_id: 1)
vibes = Collection.create(name: "vibey illustrations", user_id: 1)
doges = Collection.create(name: "Cute Doggos", user_id: 1)
random = Collection.create(name: "Random Sample", user_id: 2)

# 8.times do |x|
#     picture = Picture.create(collection_id: 1)
#     obj =  s3.bucket
# end

8.times do |x|
    pic = Picture.create(collection_id: 1)
    # pic.img_file.attach(io: File.open("/Users/yunjeonk/Documents/Flatiron/Javascript Project/Collection Pictures/fall/fall#{x+1}.jpeg"), filename: "fall#{x+1}.jpeg")
    # pic.img_file.attach(io: File.open("/public/fall/fall#{x+1}.jpeg"), filename: "fall#{x+1}.jpeg", content_type: "image/jpeg")
    # pic.img_file.attach(io: File.open("/public/fall/fall#{x+1}.jpeg"))
    pic.img_file.attach(io: File.open("/Users/yunjeonk/Development/code/Mod4/tableau-dambiance-backend/public/fall/fall#{x+1}.jpeg"), filename: "fall#{x+1}.jpeg", content_type: "image/jpeg")
end

6.times do |x|
    pic = Picture.create(collection_id: 2)
    # pic.img_file.attach(io: File.open("/Users/yunjeonk/Documents/Flatiron/Javascript Project/Collection Pictures/vibes/vibe#{x+1}.jpeg"), filename: "vibe#{x+1}.jpeg")
    # pic.img_file.attach(io: File.open("../public/vibes/vibe#{x+1}.jpeg"))
    # pic.img_file.attach(io: File.open("/public/vibes/vibe#{x+1}.jpeg"), filename: "vibe#{x+1}.jpeg", content_type: "image/jpeg")
    pic.img_file.attach(io: File.open("/Users/yunjeonk/Development/code/Mod4/tableau-dambiance-backend/public/vibes/vibe#{x+1}.jpeg"), filename: "vibe#{x+1}.jpeg", content_type: "image/jpeg")
end

6.times do |x|
    pic = Picture.create(collection_id: 3)
    # pic.img_file.attach(io: File.open("/Users/yunjeonk/Documents/Flatiron/Javascript Project/Collection Pictures/dogs/dog#{x+1}.jpeg"), filename: "dog#{x+1}.jpeg")
    # pic.img_file.attach(io: File.open("../public/dogs/dog#{x+1}.jpeg"))
    # pic.img_file.attach(io: File.open("/public/dogs/dog#{x+1}.jpeg"), filename: "dog#{x+1}.jpeg", content_type: "image/jpeg")
    pic.img_file.attach(io: File.open("/Users/yunjeonk/Development/code/Mod4/tableau-dambiance-backend/public/dogs/dog#{x+1}.jpeg"), filename: "dog#{x+1}.jpeg", content_type: "image/jpeg")
end

7.times do |x|
    pic = Picture.create(collection_id: 4)
    # pic.img_file.attach(io: File.open("/Users/yunjeonk/Documents/Flatiron/Javascript Project/Collection Pictures/random/random#{x+1}.jpeg"), filename: "random#{x+1}.jpeg")
    # pic.img_file.attach(io: File.open("../public/random/random#{x+1}.jpeg"))
    # pic.img_file.attach(io: File.open("/public/random/random#{x+1}.jpeg"), filename: "random#{x+1}.jpeg", content_type: "image/jpeg")
    pic.img_file.attach(io: File.open("/Users/yunjeonk/Development/code/Mod4/tableau-dambiance-backend/public/random/random#{x+1}.jpeg"), filename: "random#{x+1}.jpeg", content_type: "image/jpeg")
end

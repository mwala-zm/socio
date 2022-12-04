# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
  user = User.create(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.username(specifier: 20, separators: ['-']),
    age: Faker::Date.birthday(min_age: 13, max_age: 65),
    address: Faker::Address.full_address #=> "5479 William Way, East Sonnyhaven, LA 63637"
    music: Faker::Music::Hiphop.artist
  )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Flat.create!(
    name: "#{Faker::Construction.material} #{Faker::Mountain.name}",
    address: Faker::Address.street_name,
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(0..1000),
    number_of_guests: rand(0..10)
  )
end

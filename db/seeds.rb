# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Erasing Flats!"
Flat.destroy_all

puts "Creating Flats"

flat = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: "https://images.unsplash.com/photo-1556784344-ad913c73cfc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80"
)

puts "Building flat #{flat.id}"

Flat.create!(
  name: Faker::Marketing.buzzwords,
  address: Faker::Address.full_address,
  description: Faker::Lorem.paragraph_by_chars,
  price_per_night: Faker::Number.between(from: 20, to: 100),
  number_of_guests: Faker::Number.between(from: 1, to: 10),
  picture_url: "https://images.unsplash.com/photo-1581404569456-a2e7007c3979?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80"
)

Flat.create!(
  name: Faker::Marketing.buzzwords,
  address: Faker::Address.full_address,
  description: Faker::Lorem.paragraph_by_chars,
  price_per_night: Faker::Number.between(from: 20, to: 100),
  number_of_guests: Faker::Number.between(from: 1, to: 10),
  picture_url: "https://images.unsplash.com/photo-1582582494705-f8ce0b0c24f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80"
)

Flat.create!(
  name: Faker::Marketing.buzzwords,
  address: Faker::Address.full_address,
  description: Faker::Lorem.paragraph_by_chars,
  price_per_night: Faker::Number.between(from: 20, to: 100),
  number_of_guests: Faker::Number.between(from: 1, to: 10),
  picture_url: "https://images.unsplash.com/photo-1581404476143-fb31d742929f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80"
)
puts "Completed!"
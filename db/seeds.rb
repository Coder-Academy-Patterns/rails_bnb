# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create!([
  { title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'us', bed_count: rand(1..20) },
  { title: 'Eiffel Tower', street_address: 'Champ de Mars, 5 Avenue Anatole France', city: 'Paris', country_code: 'fr', bed_count: rand(1..20) },
  { title: 'Big Ben', street_address: 'Big Ben, Westminster', city: 'London', country_code: 'gb', bed_count: rand(1..20) },
  { title: 'Eureka Tower', street_address: '7 Riverside Quay', city: 'Southbank', country_code: 'au', bed_count: rand(1..20), night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000) },
  { title: 'Burj Khalifa', street_address: '1 Sheikh Mohammed bin Rashid Blvd', city: 'Dubai', country_code: 'ae', bed_count: rand(1..20), night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000) }
])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Restaurant.delete_all

category = ["chinese", "italian", "japanese", "french", "belgian"]

40.times do
  resto = Restaurant.new(
    name: "The #{Faker::Commerce.color.capitalize}",
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample
    )
  resto.save!
end

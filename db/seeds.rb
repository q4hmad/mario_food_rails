# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Commerce.product_name,
                  cost: Faker::Commerce.price,
                  country_of_origin: Faker::Address.country)
end

250.times do |index|
  Review.create!(author: Faker::Name.name_with_middle,
                 content_body: Faker::Seinfeld.quote,
                 rating: Faker::Number.between(1,5),
                 product_id: Faker::Number.between(Product.first.id, Product.last.id))
end

                 p "Created #{Product.count} products and reviews"

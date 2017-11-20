# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

40.times do |index|
  product = Product.create!(name: Faker::Food.spice,
                  cost: Faker::Commerce.price,
                  country_of_origin: Faker::Address.country)
end

10.times do
  Product.create!(name: Faker::Food.spice,
                  cost: Faker::Commerce.price,
                  country_of_origin: "USA")
end
    p "Created #{Product.count} products"

    250.times do |index|
    Review.create!(author: Faker::Name.name_with_middle,
                 content_body: Faker::Lorem.sentence(20, false, 0).chop,
                 rating: Faker::Number.between(1,5),
                 product_id: Faker::Number.between(Product.first.id, Product.last.id))
            end
        p "Created #{Review.count} reviews"

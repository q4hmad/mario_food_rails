require "rails_helper"

describe "the add a product process" do
 it "adds a new product" do
   visit products_path
   click_link 'Add a Product'
   fill_in 'Name', :with => "Haleem Masala"
   fill_in 'Country of origin', :with => "Pakistan"
   fill_in 'Cost', :with => "4"
   click_on 'Create Product'
 end

it "gives an error when no name is entered" do
  visit new_product_path
  click_on "Create Product"
  expect(page).to have_content "There were some errors. Please try again."
end

end

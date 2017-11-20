require 'rails_helper'

describe "the add a review process" do
    it "adds a new review" do
    product = Product.create(:name => "Coriander Seeds", :country_of_origin => "Sri Lanka", :cost => 34)
    visit product_path(product)
    click_on "Write a Review"
    fill_in 'Author', :with => "Margo Benjamin Adler"
    fill_in "Content body", :with => "Wonderful, fragrant, and absolutely fresh. Add a little to your curry dishes for great results."
    fill_in "Rating", :with => 5
    click_on "Create Review"
    expect(page).to have_content "Coriander Seeds"
   end
end

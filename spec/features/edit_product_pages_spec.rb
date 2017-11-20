require "rails_helper"

describe "the edit a product process" do
  it "edits a product name" do
      product = Product.create(:name => "Biryani Masala",  :cost => 40,
     :country_of_origin => "Trinidad")
      visit edit_product_path(product)
      fill_in 'Name', :with => 'Amchoor'
      click_on 'Update Product'
      expect(page).to have_content 'Amchoor'
  end

  it "gives error when no description is entered" do
    product = Product.create(:name => 'Turmeric', :cost => 28, :country_of_origin => 'India')
    visit edit_product_path(product)
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'There were some errors. Please try again.'
  end
end

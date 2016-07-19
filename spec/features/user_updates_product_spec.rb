require 'rails_helper'

feature "user updates product" do 
  let!(:product) { create(:product) }
  let(:new_product) { create(:product, :product2) }

  scenario "successfully" do 
    visit products_path 

    first(".product-item").click_link 'Edit' 

    fill_in "Name", with: new_product.name 
    fill_in "Price", with: new_product.price 
    select product.category.name, from: "product_category_id"

    click_button 'Update Product'

    expect(page).to have_content new_product.name 
  end 
end 

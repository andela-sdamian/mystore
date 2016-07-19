require "rails_helper" 

feature "user creates product" do 
  let!(:category) { create(:category) }
  let(:product) { build(:product)}
  

  scenario "successfully" do 
    visit new_product_path 

    fill_in "Name", with: product.name 
    fill_in  "Price", with: product.price 
    select category.name, from: "product_category_id"

    click_button 'Create Product'

    expect(page).to have_content product.name 
  end 
end 

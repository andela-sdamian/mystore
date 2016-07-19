require "rails_helper" 

feature "user visits homepage" do 
  scenario "successfully" do 
    visit root_path 

    expect(page).to have_css "#app-title", text: "Sabo Market"
    expect(page).to have_css "#btn-products", text: "Products"
    expect(page).to have_css "#btn-categories", text: "Categories"
  end 
end 

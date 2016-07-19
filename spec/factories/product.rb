FactoryGirl.define do 
  factory :product do 
    name "Electric Fan"
    price 10 
    category { create(:category) }

    trait :product2 do 
      name "Male Shorts"
      price 2
      category { create(:category, :category2) }
    end 
  end 
end 

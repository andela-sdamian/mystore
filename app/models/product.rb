class Product < ActiveRecord::Base
  belongs_to :category 

  self.per_page = 2

  def self.search(keyword, page)
    products = all.paginate(page: page)
    if keyword
      keyword = "%#{keyword}%"
      products = products.joins(:category).where(
        'products.name LIKE ? OR categories.name LIKE ?', 
        keyword, keyword 
      )
    else
      products
    end 
  end 
end 
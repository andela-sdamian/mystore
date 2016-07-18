class CreateProducts < ActiveRecord::Migration 
  def change 
    create_table :products do |t| 
      t.string :name 
      t.float :price 
      t.integer :category_id 

      t.timestamps null: false 
    end 

    add_index :products, :name
    add_index :products, :category_id
  end 
end 

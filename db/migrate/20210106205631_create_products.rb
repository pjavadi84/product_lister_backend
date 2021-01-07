class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name 
      t.float :price
      t.integer :quantity_on_hand
      t.text :description
      t.timestamps
    end
  end
end

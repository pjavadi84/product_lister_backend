class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity_needed
      t.integer :product_id
      t.integer :shopping_cart_id
      t.integer :user_id
      t.timestamps
    end
  end
end

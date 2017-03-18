class CreateProductVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :product_vendors do |t|
      t.integer :product_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end

class CreateInvoiceProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :invoice_products do |t|
      t.integer :invoice_id
      t.integer :product_id

      t.timestamps
    end
  end
end

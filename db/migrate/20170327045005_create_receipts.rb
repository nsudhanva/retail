class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.date :receipt_date
      t.text :message
      t.integer :payment_type_id
      t.integer :deposit_id
      t.float :amount
      t.string :attachment
      t.integer :invoice_id

      t.timestamps
    end
  end
end

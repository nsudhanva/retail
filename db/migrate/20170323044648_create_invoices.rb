class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :client_id
      t.string :client_email
      t.text :billing_address
      t.date :invoice_date
      t.date :due_date
      t.string :tax_type
      t.text :message
      t.text :statement
      t.string :discount_type
      t.float :discount
      t.string :attachment

      t.timestamps
    end
  end
end

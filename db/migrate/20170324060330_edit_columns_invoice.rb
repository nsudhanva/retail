class EditColumnsInvoice < ActiveRecord::Migration[5.0]
  def change
  	remove_column :invoices, :tax_type
  	remove_column :invoices, :discount_type
  	add_column :invoices, :tax_id, :integer
  	add_column :invoices, :discount_type_id, :integer
  	add_column :invoices, :amount, :float
  end
end

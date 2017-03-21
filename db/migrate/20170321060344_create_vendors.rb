class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :code
      t.string :email
      t.string :phone
      t.text :address
      t.string :pan
      t.string :account_no
      t.float :opening_balance
      t.string :website
      t.string :tax_reg_no
      t.date :tax_reg_date
      t.boolean :tds
      t.string :entity
      t.string :section

      t.timestamps
    end
  end
end

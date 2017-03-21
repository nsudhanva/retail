class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :code
      t.string :email
      t.string :phone
      t.text :s_address
      t.text :b_address
      t.string :website
      t.text :notes
      t.string :tax_reg_no
      t.string :cst_reg_no
      t.string :pan
      t.string :payment_method
      t.float :opening_balance
      t.date :opening_balance_date
      t.string :attachment

      t.timestamps
    end
  end
end

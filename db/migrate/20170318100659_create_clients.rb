class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :code
      t.string :email
      t.string :phone
      t.text :s_address
      t.text :b_address

      t.timestamps
    end
  end
end

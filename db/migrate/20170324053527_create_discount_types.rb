class CreateDiscountTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :discount_types do |t|
      t.string :name
      t.float :percentage
      t.float :amount

      t.timestamps
    end
  end
end

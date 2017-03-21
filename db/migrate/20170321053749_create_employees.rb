class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :employee_id
      t.date :dob
      t.string :email
      t.string :phone
      t.text :address
      t.date :hire_date
      t.date :release_date

      t.timestamps
    end
  end
end

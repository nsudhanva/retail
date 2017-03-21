json.extract! employee, :id, :first_name, :last_name, :gender, :employee_id, :dob, :email, :phone, :address, :hire_date, :release_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)

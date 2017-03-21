json.extract! client, :id, :first_name, :last_name, :code, :email, :phone, :s_address, :b_address, :website, :notes, :tax_reg_no, :cst_reg_no, :pan, :payment_method, :opening_balance, :opening_balance_date, :attachment, :created_at, :updated_at
json.url client_url(client, format: :json)

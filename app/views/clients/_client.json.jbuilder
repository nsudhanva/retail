json.extract! client, :id, :name, :code, :email, :phone, :s_address, :b_address, :created_at, :updated_at
json.url client_url(client, format: :json)

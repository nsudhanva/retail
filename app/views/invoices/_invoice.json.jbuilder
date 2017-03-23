json.extract! invoice, :id, :client_id, :client_email, :billing_address, :invoice_date, :due_date, :tax_type, :message, :statement, :discount_type, :discount, :attachment, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)

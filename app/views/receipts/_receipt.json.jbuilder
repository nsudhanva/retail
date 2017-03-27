json.extract! receipt, :id, :receipt_date, :message, :payment_type_id, :deposit_id, :amount, :attachment, :invoice_id, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)

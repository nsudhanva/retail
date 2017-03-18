json.extract! product, :id, :name, :code, :description, :image, :cost, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)

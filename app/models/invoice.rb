class Invoice < ApplicationRecord
	has_many :invoice_products
	has_many :products, through: :invoice_products
end

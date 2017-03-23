class Invoice < ApplicationRecord
	has_many :invoice_products
	has_many :products, through: :invoice_products

	belongs_to :client

 	accepts_nested_attributes_for :products, :allow_destroy => true
end

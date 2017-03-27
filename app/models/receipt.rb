class Receipt < ApplicationRecord
	belongs_to :invoice
	belongs_to :payment_type
	belongs_to :deposit
end

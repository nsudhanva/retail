class Client < ApplicationRecord
	has_many :invoices
	has_many :receipts
end

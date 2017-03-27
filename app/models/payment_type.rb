class PaymentType < ApplicationRecord
	has_many :receipts
	
end

class ProductVendor < ApplicationRecord
	belongs_to :product 
	belongs_to :vendor
end

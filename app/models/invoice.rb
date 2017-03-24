class Invoice < ApplicationRecord
	mount_uploader :attachment, InvoiceAttachmentUploader

	has_many :invoice_products
	has_many :products, through: :invoice_products

	belongs_to :client
	belongs_to :tax
	belongs_to :discount_type
end

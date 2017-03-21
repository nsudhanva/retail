class Product < ApplicationRecord
	mount_uploader :image, ProductImageUploader 

	has_many :product_categories
	has_many :categories, through: :product_categories

	has_many :product_vendors
	has_many :vendors, through: :product_vendors

	def self.to_csv(options = {}) 
    CSV.generate(options) do |csv| 
      csv << column_names 
      all.each do |product| 
        csv << product.attributes.values_at(*column_names) 
      end 
    end 
  end 
end

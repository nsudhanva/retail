class Category < ApplicationRecord
	has_many :product_categories
	has_many :products, through: :product_categories

	has_many :category_sub_category
	has_many :sub_categories, through: :category_sub_category

	validates :name, presence: true
end

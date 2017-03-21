class SubCategory < ApplicationRecord
	has_many :category_sub_category
	has_many :categories, through: :category_sub_category

	validates :name, presence: true
end

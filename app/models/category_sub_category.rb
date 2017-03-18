class CategorySubCategory < ApplicationRecord
	belongs_to :category
	belongs_to :sub_category
end

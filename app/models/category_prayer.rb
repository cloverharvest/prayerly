class CategoryPrayer < ActiveRecord::Base
  belongs_to :category
  belongs_to :prayer
end

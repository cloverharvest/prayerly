class SpecificPrayer < ActiveRecord::Base
  belongs_to :prayer
  belongs_to :category
end

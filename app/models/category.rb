class Category < ActiveRecord::Base
  has_many :specific_prayers, dependent: :destroy
  has_many :prayers, through: :specific_prayers
end

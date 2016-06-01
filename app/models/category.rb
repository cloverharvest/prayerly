class Category < ActiveRecord::Base
  has_many :specific_prayers, dependent: :destroy
  has_many :prayers, through: :specific_prayers

  validates :cat_name, presence: true, length: { in: 5..100, too_long: "%{count} characters is the maximum allowed"}

end

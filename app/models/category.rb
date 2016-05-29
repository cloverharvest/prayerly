class Category < ActiveRecord::Base
  has_many :categoryprayers, dependent: :destroy
  has_many :prayers, through: :categoryprayers
end

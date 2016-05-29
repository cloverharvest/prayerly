class Prayer < ActiveRecord::Base
  has_many :categoryprayers, dependent: :destroy
  has_many :categories, through: :categoryprayers

  def self.search(search)
    where("title ILIKE ? OR text ILIKE ?", "%#{search}%", "%#{search}%",)
  end
end

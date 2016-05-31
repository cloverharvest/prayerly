class Prayer < ActiveRecord::Base
  has_many :specific_prayers, dependent: :destroy
  has_many :categories, through: :specific_prayers

  has_many :comments

  def self.search(search)
    where("title ILIKE ? OR text ILIKE ?", "%#{search}%", "%#{search}%",)
  end
end

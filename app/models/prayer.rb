class Prayer < ActiveRecord::Base
  has_many :specific_prayers, dependent: :destroy
  has_many :categories, through: :specific_prayers

  has_many :comments

  validates :image, :title, :text, presence: true
  validates :title, length: { minimum: 2 }
  validates :text, length: { in: 5..2000, too_long: "%#{count} characters is the maximum allowed"}

  def self.search(search)
    where("title ILIKE ? OR text ILIKE ?", "%#{search}%", "%#{search}%",)
  end
end

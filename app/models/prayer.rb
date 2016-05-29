class Prayer < ActiveRecord::Base

  def self.search(search)
    where("title ILIKE ? OR text ILIKE ?", "%#{search}%", "%#{search}%",)
  end
end

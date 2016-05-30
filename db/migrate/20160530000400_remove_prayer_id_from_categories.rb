class RemovePrayerIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :prayer_id, :integer
  end
end

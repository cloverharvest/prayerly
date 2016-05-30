class RemoveCategoryIdFromPrayers < ActiveRecord::Migration
  def change
    remove_column :prayers, :category_id, :integer
  end
end

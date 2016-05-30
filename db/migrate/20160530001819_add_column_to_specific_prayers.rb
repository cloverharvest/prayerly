class AddColumnToSpecificPrayers < ActiveRecord::Migration
  def change
    add_column :specific_prayers, :category_id, :integer
    add_column :specific_prayers, :prayer_id, :integer
  end
end

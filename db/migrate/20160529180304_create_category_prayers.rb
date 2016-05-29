class CreateCategoryPrayers < ActiveRecord::Migration
  def change
    create_table :category_prayers do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :prayer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

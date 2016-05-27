class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :image
      t.string :title
      t.string :text
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

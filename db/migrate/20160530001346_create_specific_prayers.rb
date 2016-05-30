class CreateSpecificPrayers < ActiveRecord::Migration
  def change
    create_table :specific_prayers do |t|

      t.timestamps null: false
    end
  end
end

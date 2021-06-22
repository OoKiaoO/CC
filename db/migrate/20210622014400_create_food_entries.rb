class CreateFoodEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :food_entries do |t|
      t.references :record, null: false, foreign_key: true
      t.integer :quantity
      t.integer :weight_unit
      t.string :food_name
      t.integer :calories

      t.timestamps
    end
  end
end

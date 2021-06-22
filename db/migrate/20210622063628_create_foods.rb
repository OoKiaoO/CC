class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.integer :quantity
      t.string :serving_unit
      t.integer :calories

      t.timestamps
    end
  end
end

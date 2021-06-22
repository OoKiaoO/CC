class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.references :user, null: false, foreign_key: true
      t.string :meal_type
      t.date :date
      t.integer :total_cal

      t.timestamps
    end
  end
end

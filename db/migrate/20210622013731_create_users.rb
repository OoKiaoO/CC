class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.integer :height
      t.integer :weight
      t.integer :age
      t.string :sex
      t.integer :weight_goal

      t.timestamps
    end
  end
end

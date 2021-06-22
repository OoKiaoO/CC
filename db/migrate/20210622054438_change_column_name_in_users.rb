class ChangeColumnNameInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :sex, :gender
  end
end

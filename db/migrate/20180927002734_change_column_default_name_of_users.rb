class ChangeColumnDefaultNameOfUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :name,  nil
    change_column_default :users, :phone, nil
  end
end

class ChangeDatatypeStatusOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :status, :string
    change_column :requests, :managecheck, :string
    change_column :requests, :managecheck, :string
  end
end

class RemoveUserToRequests < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :user, :string
  end
end

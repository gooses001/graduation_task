class RemoveUserEmailToRequests < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :User_email, :string
  end
end

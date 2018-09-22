class AddUserEmailToRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :User_email, :string, null:false
  end
end

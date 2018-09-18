class ChangeDatatypePhoneOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :phone, :string
  end
end

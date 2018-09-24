class ChangeDatatypeChiefcheckOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :chiefcheck, :string
  end
end

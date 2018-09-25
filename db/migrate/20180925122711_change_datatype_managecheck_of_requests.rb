class ChangeDatatypeManagecheckOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :purpose,  :text,  null: false
    change_column :requests, :reason,   :text,  null: false
    change_column :requests, :managecheck,  :string,  null: false, default:"未承認"
    change_column :requests, :chiefcheck,   :string,  null: false, default:"未承認"
  end
end

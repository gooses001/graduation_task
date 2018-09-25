class ChangeDatatypeReasonOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :purpose,  :text,  null: false, default:"未承認"
    change_column :requests, :reason,   :text,  null: false, default:"未承認"
  end
end

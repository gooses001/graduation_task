class ChangeDatatypePurposeOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :purpose,  :text,  null: false
    change_column :requests, :reason,   :text,  null: false
  end
end

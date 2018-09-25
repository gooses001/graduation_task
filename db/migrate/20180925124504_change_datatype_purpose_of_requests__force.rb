class ChangeDatatypePurposeOfRequestsForce < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :purpose,  :text,  null: false, default:""
    change_column :requests, :reason,   :text,  null: false, default:""
  end
end

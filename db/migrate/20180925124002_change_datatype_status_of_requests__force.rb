class ChangeDatatypeStatusOfRequestsForce < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :status, :string,  null: false, default:"未完了"
  end
end

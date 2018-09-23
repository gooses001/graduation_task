class ChangeDatatypeContentOfRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :content, :string
  end
end

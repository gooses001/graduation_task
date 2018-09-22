class AddColumnsToRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :date,        :string,    null:false, default:"yyyy-mm-dd"
    add_column :requests, :name,        :text
    add_column :requests, :email,       :string
    add_column :requests, :department,  :text
    add_column :requests, :phone,       :integer
    add_column :requests, :manager,     :text
    add_column :requests, :chief,       :text
    add_column :requests, :mailing,     :string
    add_column :requests, :purpose,     :text
    add_column :requests, :reason,      :text
    add_column :requests, :range,       :boolean
    add_column :requests, :content,     :boolean
    add_column :requests, :user,        :string
    add_column :requests, :status,      :boolean
    add_column :requests, :managecheck, :boolean
    add_column :requests, :chiefcheck,  :boolean
  end
end

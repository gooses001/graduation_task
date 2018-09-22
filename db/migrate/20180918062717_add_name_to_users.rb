class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users,:name,:text ,null:false, default:"あなたの名前"
  end
end

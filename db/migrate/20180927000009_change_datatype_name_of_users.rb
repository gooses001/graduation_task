class ChangeDatatypeNameOfUsers < ActiveRecord::Migration[5.1]
  def change
    def change
    change_column :users,:name,:text ,null:false, default:""
    end
  end
end

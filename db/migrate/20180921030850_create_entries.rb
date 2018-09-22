class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.integer :entries_id,   null: false
      t.string :entry_user,   null: false
      t.string :entry_name,   null: false

      t.timestamps
    end
  end
end

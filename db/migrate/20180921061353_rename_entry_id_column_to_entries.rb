class RenameEntryIdColumnToEntries < ActiveRecord::Migration[5.1]
  def change
    rename_column :entries, :entry_id, :request_id
  end
end

class RenameEntryIdColumnToEntries < ActiveRecord::Migration[5.1]
  def change
    rename_column :entries, :entries_id, :request_id
  end
end

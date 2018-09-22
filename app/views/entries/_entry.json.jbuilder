json.extract! entry, :id, :entry_id, :entry_user, :entry_name, :created_at, :updated_at
json.url entry_url(entry, format: :json)

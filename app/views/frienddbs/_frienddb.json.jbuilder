json.extract! frienddb, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url frienddb_url(frienddb, format: :json)

json.extract! client, :id, :nome, :pass, :email, :created_at, :updated_at
json.url client_url(client, format: :json)

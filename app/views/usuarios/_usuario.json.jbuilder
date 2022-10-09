json.extract! usuario, :id, :email, :senha, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

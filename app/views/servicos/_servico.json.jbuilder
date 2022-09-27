json.extract! servico, :id, :nome, :descricao, :valor, :trabalhador_id, :created_at, :updated_at
json.url servico_url(servico, format: :json)

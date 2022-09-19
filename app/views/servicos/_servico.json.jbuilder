json.extract! servico, :id, :descricao, :valor, :trabalhador_id, :created_at, :updated_at
json.url servico_url(servico, format: :json)

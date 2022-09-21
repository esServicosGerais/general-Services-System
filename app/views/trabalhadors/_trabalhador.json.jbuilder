json.extract! trabalhador, :id, :nome, :cpf/cnpj, :telefone, :email, :dataNascimento, :profissão, :endereco_id, :created_at, :updated_at
json.url trabalhador_url(trabalhador, format: :json)

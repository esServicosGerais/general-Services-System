json.extract! cliente, :id, :nome, :cpf, :telefone, :email, :dataNascimento, :cidade, :bairro, :logradouro, :cep, :complemento, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

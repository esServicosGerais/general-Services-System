json.extract! contrato, :id, :dataInicio, :dataTermino, :duracaoTotalServico, :valorTotal, :situacao, :cliente_id, :servico_id, :created_at, :updated_at
json.url contrato_url(contrato, format: :json)

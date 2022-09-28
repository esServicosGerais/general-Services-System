class Servico < ApplicationRecord
  belongs_to :trabalhador

  validates :nome, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,50}$)/,
                               message: "Campo vazio, ou caracteres inválidos!"}

  validates :descricao, :format => {with: /(\A([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){4,200}\z)/,
                                    message: "Campo não pode ser vazio, ou Caracteres válidos!"}, presence: true

  validates :valor, length: {in: 1..100}, format: { with: /\A\d+(?:\.\d{0,2})?\z/,
                                                    message: "Use apenas numeros e ponto"}

  validates :trabalhador_id, presence: true
end

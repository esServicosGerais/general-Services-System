class Endereco < ApplicationRecord
  belongs_to :cliente
  belongs_to :trabalhador

  validates :cep, :format => {with: /(^[0-9]{5}-[0-9]{3}$)/, 
                          message: "Caracteres inválidos, ou formato inválido!"}

  validates :cidade, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,30}$)/,
                              message: "Campo vazio, ou catacteres inválidos!"}

  validates :bairro, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,30}$)/,
                              message: "Campo vazio, ou catacteres inválidos!"}

  validates :logradouro, :format => {with: /(^([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){4,30}$)/,
                               message: "Campo vazio, ou caracteres inválidos!"}

  validates :complemento, :format => {with: /(^([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){,20}$)/,
                                   message: "Digite Caracteres válidos!"}
end

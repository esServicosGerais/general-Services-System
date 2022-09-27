require 'cpf_cnpj'

class Trabalhador < ApplicationRecord

  has_many :servicos, dependent: :destroy

end

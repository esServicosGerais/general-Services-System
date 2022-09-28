require 'cpf_cnpj'

class Cliente < ApplicationRecord

  validates :nome, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,50}$)/,
                               message: "Campo vazio, ou caracteres inválidos!"}

  validates :cpf, presence: true, uniqueness: true
  validate :cpf_valida?

  validates :telefone, :format => {with: /(^([0-9]{2}) [0-9]{5}-[0-9]{4}$)/,
                                   message: "Formato do número: (XX) XXXXX-XXXX"}

  validates :email, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: true

  validates :dataNascimento, presence: true

  #apenas letras, espassadas com um unico espaço, com tamanho minimo 4 é maximo de 30. Por possuir tamanho minomo,campo não pode ser vazio
  validates :cidade, :format => {:with => /(^([A-Za-z\u00C0-\u017F]\s?){4,30}$)/,
                                 :message => "Campo vazio, ou caracteres inválidos. Digite somente letras!"}

  validates :logradouro, :format => {:with => /(^([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){4,30}$)/,
                                     :message => "Campo vazio, ou caracteres inválidos."}

  validates :cep, format: {with: /(^[0-9]{5}-[0-9]{3}$)/, :messege => "digite no formato xxxxx-xxx"}

  validates :complemento, :format => {:with => /(^([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){,20}$)/,
                                      :message => "Digite Caracteres válidos."}

  private
  def cpf_valida?
    if cpf.present? && !CPF.valid?(cpf)
      errors.add :cpf, "Formato cpf: XXX.XXX.XXX-XX"
    end
  end

end

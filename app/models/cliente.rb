require 'cpf_cnpj'

class Cliente < ApplicationRecord

  validates :nome, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,50}$)/,
                               message: "Campo vazio, ou caracteres inválidos!"}

  validates :cpf, presence: true, uniqueness: true
  validate :cpf_valida?

  validates :telefone, :format => {with: /(^\([0-9]{2}\) [0-9]{5}-[0-9]{4}$)/,
                                   message: "Formato do número: (XX) XXXXX-XXXX"}

  validates :email, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: true

  validates :dataNascimento, presence: true

  private
  def cpf_valida?
    if cpf.present? && !CPF.valid?(cpf)
      errors.add :cpf, "Formato cpf: XXX.XXX.XXX-XX"
    end
  end

end

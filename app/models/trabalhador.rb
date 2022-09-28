require 'cpf_cnpj'

class Trabalhador < ApplicationRecord

  has_many :servicos, dependent: :destroy

  validates :nome, :format => {with: /(\A([A-Za-z\u00C0-\u017F]\s?){4,50}\z)/,
                               message: "Campo vazio, ou caracteres inválidos!"}

  validates :cpf_or_cnpj, presence: true, uniqueness: true
  validate :valida_cpf_and_cnpj?

  validates :telefone, :format => {with: /(^\([0-9]{2}\) [0-9]{5}-[0-9]{4}$)/,
                                   message: "Formato do número: (XX) XXXXX-XXXX"}

  validates :email, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: true

  validates :dataNascimento, presence: true

  validates :profissao, :format => {with: /(^([A-Za-z\u00C0-\u017F]\s?){4,50}$)/,
                                    message: "Campo vazio, ou caracteres inválidos!"}

  validates :cidade, :format => {with: /(\A([A-Za-z\u00C0-\u017F]\s?){4,30}\z)/,
                                 message: "Campo vazio, ou caracteres inválidos. Digite somente letras!"}

  validates :logradouro, :format => {with: /(\A([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){4,30}\z)/,
                                     message: "Campo vazio, ou caracteres inválidos."}

  validates :cep, format: {with: /(\A[0-9]{5}-[0-9]{3}\z)/, :message => "digite no formato xxxxx-xxx"}

  validates :complemento, :format => {with: /(\A([A-Za-z0-9\u00C0-\u017F]|,||.|\s?){,20}\z)/,
                                      message: "Digite Caracteres válidos."}

  private
  def valida_cpf_and_cnpj?

    if cpf_or_cnpj.present?
      if tamanho_id(cpf_or_cnpj) == 11

        if !CPF.valid?(cpf_or_cnpj)
          errors.add :cpf_or_cnpj, "CPF inválido, ou Formato cpf: XXX.XXX.XXX-XX"
        end

        return

      end

      if tamanho_id(cpf_or_cnpj) == 14

        if !CNPJ.valid?(cpf_or_cnpj)
          errors.add :cpf_or_cnpj, "CNPJ inválido, ou Formato cnpj: XX.XXX.XXX/XXXX-XX"
        end

        return

      end

      errors.add :cpf_or_cnpj, "Tamanho inválido, 11 dígitos se for CPF, ou 14 Dígitos se for CNPJ!"
      return

    end

    errors.add :cpf_or_cnpj, "Campo não pode ser vazio!"

  end

  def tamanho_id id
    return id.gsub(/[^0-9]/,'').length
  end

end

require "test_helper"

class TrabalhadorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def criando_trabalhador
    trabalhador = Trabalhador.new nome: "Jonathan Matos", cpf_or_cnpj: "706.351.254-47", telefone: "(87) 99999-5421",
                                  email: "jonathan@gmail.com", dataNascimento: "06-05-1992", profissao: "pintor",
                                  cidade: "Garanhuns", bairro: "Boa vista", logradouro: "Rua da Fofoca", cep: "88887-000",
                                  complemento: " "

    return trabalhador

  end

  test "salvando trabalhador" do
    trabalhador = criando_trabalhador
    assert trabalhador.save
  end

  test "atualizando bairro" do
    trabalhador = criando_trabalhador
    trabalhador.bairro = "João da Mata"
    assert trabalhador.save
  end

  test "criando trabalhador sem cpf" do
    trabalhador = Trabalhador.new nome: "Jonathan Matos", cpf_or_cnpj: " ", telefone: "(87) 99999-5421",
                    email: "jonathan@gmail.com", dataNascimento: "06-05-1992", profissao: "pintor",
                    cidade: "Garanhuns", bairro: "Boa vista", logradouro: "Rua da Fofoca", cep: "88887-000",
                    complemento: " "

    assert_not trabalhador.save
  end
end

require "test_helper"

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def criando_cliente
    cliente = Cliente.new nome: "Jonathan Matos", cpf: "706.351.254-47", telefone: "(87) 99999-5421",
                                  email: "jonathan@gmail.com", dataNascimento: "06-05-1992",cidade: "Garanhuns",
                                  bairro: "Boa vista", logradouro: "Rua da Fofoca", cep: "88887-000", complemento: " "

    return cliente

  end

  test "salvando cliente no banco de dados" do
    cliente = criando_cliente
    assert cliente.save
  end

  test "atualizando email do cliente corretamente" do
    cliente = criando_cliente
    cliente.email = "cliente@gmail.com"
    assert cliente.save
  end

  test "criando cliente incorretamente sem telefone" do

    cliente = Cliente.new nome: "Jonathan Matos", cpf: "706.351.254-47", telefone: "",
                          email: "jonathan@gmail.com", dataNascimento: "06-05-1992",cidade: "Garanhuns",
                          bairro: "Boa vista", logradouro: "Rua da Fofoca", cep: "88887-000", complemento: " "

    assert_not cliente.save
  end
end

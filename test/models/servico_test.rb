require "test_helper"

class ServicoTest < ActiveSupport::TestCase
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

  def criando_servico
    trabalhador = criando_trabalhador
    trabalhador.save

    servico = Servico.new nome: "Motagem de Moveis", descricao: "Os moveis a ser montados são, armário de parede, é um guarda roupa tamanho queen.",
                               valor: 29.90, trabalhador_id: trabalhador.id
    return servico
  end

  test "salvando um servico no banco de dados" do
    servico  = criando_servico
    assert servico.save
  end

  test "atualizando o nome do servico de forma incorreta" do
    servico = criando_servico
    assert servico.save
    servico.nome = " "
    assert_not servico.save
  end

  test "atualizando trabalhador que nao tem id" do
    trabalhador = criando_trabalhador
    servico = criando_servico
    assert servico.save
    servico.trabalhador_id = trabalhador.id
    assert_not servico.save
  end
end

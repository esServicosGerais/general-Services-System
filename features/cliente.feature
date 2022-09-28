Feature: Cliente
  As a usuario do sistema de servicos gerais
  I want to cadastrar, editar, remover e visualizar um cliente
  So that eu nao tenha que fazer isso manualmente


  Scenario: cadastrar cliente
    Given estou na pagina de cliente
    When eu preencho os campos de nome 'Marcos', cpf '070.101.664-71', telefone '(87) 98854-5654', email 'marcos@gmail.com', dataNascimento '1999-06-24', cidade 'Garanhuns', bairro 'Centro', logradouro 'Rua 1', cep '58541-000' e complemento 'Casa'
    And eu clico em cadastrar novo cliente
    Then eu vejo uma mensagem que o cliente foi cadastrado com sucesso

  Scenario: editar cliente
    Given estou na pagina de cliente
    And o cliente de cpf '427.553.030-69' existe
    When eu clico em editar cliente de cpf '427.553.030-69'
    And eu atualizo o campo com email 'marcossilva@gmail.com'
    #And eu clico em atualizar cliente
    Then eu vejo que o cliente de cpf '427.553.030-69' foi editado com sucesso




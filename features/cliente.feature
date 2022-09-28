Feature: Cliente
  As a usuario do sistema de servicos gerais
  I want to cadastrar, editar, remover e visualizar um cliente
  So that eu nao tenha que fazer isso manualmente


  Scenario: cadastrar cliente
    Given estou na pagina de cliente
    When eu preencho os campos de nome 'Marcos', cpf '070.101.664-71', telefone '(87) 98854-5654', email 'marcos@gmail.com', dataNascimento '1999-06-24', cidade 'Garanhuns', bairro 'Centro', logradouro 'Rua 1', cep '58.541-000' e complemento 'Casa'
    And eu clico em cadastrar novo cliente
    Then eu vejo uma mensagem que o cliente foi cadastrado com sucesso

  


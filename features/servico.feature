Feature: Servico
  As a usuario do sistema de servicos gerais
  I want to cadastrar, editar, remover e visualizar um servico
  So that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar servico
    Given estou na pagina de cadastrar um servico
    And o trabalhador com cpf_or_cnpj '093.181.914-80' existe
    When eu preencho os campos de nome 'Freela', descricao 'Freelancer em delphi', valor '80.00' e trabalhador_id '1'
    And eu clico em cadastrar novo servico
    Then eu vejo uma mensagem que o servico foi cadastrado com sucesso

  Scenario: cadastrar servico com nome vazio
    Given estou na pagina de cadastrar um servico
    And o trabalhador com cpf_or_cnpj '093.181.914-80' existe
    When eu preencho os campos de nome '', descricao 'Freela', valor '80.00' e trabalhador_id '1'
    And eu clico em cadastrar novo servico
    Then eu vejo uma mensagem que o servico nao foi cadastrado

  Scenario: cadastrar servico com trabalhador_id vazio
    Given estou na pagina de cadastrar um servico
    And o trabalhador com cpf_or_cnpj '093.181.914-80' existe
    When eu preencho os campos de nome 'Freela', descricao 'Freela', valor '80.00' e trabalhador_id ''
    And eu clico em cadastrar novo servico
    Then eu vejo uma mensagem que o servico nao foi cadastrado

  Scenario: cadastrar servico com descricao vazia
    Given estou na pagina de cadastrar um servico
    And o trabalhador com cpf_or_cnpj '093.181.914-80' existe
    When eu preencho os campos de nome 'Freela', descricao '', valor '80.00' e trabalhador_id '1'
    And eu clico em cadastrar novo servico
    Then eu vejo uma mensagem que o servico nao foi cadastrado

  Scenario: cadastrar servico com valor vazio
    Given estou na pagina de cadastrar um servico
    And o trabalhador com cpf_or_cnpj '093.181.914-80' existe
    When eu preencho os campos de nome 'Freela', descricao 'Freela', valor '' e trabalhador_id '1'
    And eu clico em cadastrar novo servico
    Then eu vejo uma mensagem que o servico nao foi cadastrado por causa do valor

Feature: Servico
  As a usuario do sistema de servicos gerais
  I want to cadastrar, editar, remover e visualizar um servico
  So that eu nao tenha que fazer isso manualmente

  Scenario: atualizar descricao do servico
    Given estou na pagina do servico de nome 'Freela' existe
    And eu clico em editar servico
    When eu atualizo a descricao para 'Freelancer Java'
    And eu clico em atualizar servico
    Then eu vejo uma mensagem que o servico foi atualizado com sucesso

  Scenario: atualizar valor do servico
    Given estou na pagina do servico de nome 'Freela' existe
    And eu clico em editar servico
    When eu atualizo o valor do servico para '200.00'
    And eu clico em atualizar servico
    Then eu vejo uma mensagem que o servico foi atualizado com sucesso

  Scenario: remover servico
    Given estou na pagina do servico de nome 'Freela' existe
    When eu clico em remover o servico de nome 'Freela'
    Then eu vejo uma mensagem que o servico foi apagado com sucesso
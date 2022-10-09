Feature: Contrato
  As a cliente do sistema de servicos gerais
  I want to editar, remover, visualizar e contratar servicos ofertados
  So that eu encontre os servicos que necessito

  Scenario: remover contrato
    Given estou na pagina de contrato
    And o contrato de '' existe
    When eu clico em remover o contrato ''
    Then eu vejo uma mensagem que o contrato foi removido com sucesso

  Scenario: editar contrato
    Given estou na pagina de contrato
    And o contrato de '' existe
    When eu clico em editar contrato de ''
    And eu atualizo o campo com ''
    Then eu vejo que o contrato de '' foi editado com sucesso

  Scenario: visulizar contrato
    Given estou na pagina de contrato
    And o contrato de '' esta cadastrado
    And estou na pagina de todos os contratos
    Then eu visualizo o contrato de ''

  Scenario: cadastrar contrato
    Given estou na pagina de contrato
    When eu preencho os campos de  '',  '',  '',  '' e ''
    And eu clico em cadastrar novo contrato
    Then eu vejo uma mensagem que o contrato foi cadastrado com sucesso

  Scenario: cadastrar contrato sem cliente
    Given estou na pagina de contrato
    When eu preencho os campos de '',  '',  '',  '' e ''
    And eu clico em cadastrar novo contrato
    Then eu vejo uma mensagem que o contrato foi cadastrado com sucesso

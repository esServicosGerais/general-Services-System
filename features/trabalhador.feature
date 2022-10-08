Feature: Trabalhador
  As a usuario do sistema de servicos gerais
  I want to cadastrar, editar, remover e visualizar um Trabalhador
  So that eu nao tenha que fazer isso manualmente
  
  Scenario: cadastrar trabalhador
    Given estou na pagina de cadastrar trabalhador
    When eu preencho os campos de nome 'Breno', cpf_or_cnpj '090.606.644-18', telefone '(83) 98719-8269', email 'breno@gmail.com', dataNascimento '2000-10-15', profissao 'Desenvolvedor', cidade 'Garanhuns', bairro 'Heliopolis', logradouro 'Rua Joaquim Tavora', cep '55295-410' e complemento 'Casa'
    And eu clico em cadastrar novo trabalhador
    Then eu vejo uma mensagem que o trabalhador foi cadastrado com sucesso

  Scenario: editar trabalhador
    Given estou na pagina de todos os trabalhadores
    And o trabalhador de cpf_or_cnpj '090.606.594-14' existe
    When eu clico em editar trabalhador de cpf_or_cnpj '090.606.594-14'
    And eu atualizo o campo do trabalhado com o email 'iago@gmail.com'
    Then eu vejo que o trabalhador de cpf_or_cnpj '090.606.594-14' foi editado com sucesso

  Scenario: visualizar trabalhador
    Given estou na pagina de todos os trabalhadores
    And o trabalhador de cpf_or_cnpj '521.766.904-78' esta cadastrado
    And estou na pagina de todos os trabalhadores
    Then eu visualizo o trabalhador de cpf_or_cnpj '521.766.904-78'

  Scenario: remover trabalhador
    Given estou na pagina de todos os trabalhadores
    And vejo o trabalhador de cpf_or_cnpj '090.606.644-18'
    When eu clico em remover o trabalhador com cpf_or_cnpj '090.606.644-18'
    Then eu vejo uma mensagem que o trabalhador foi removido com sucesso

  Scenario: cadastrar trabalhador com cpf invalido
    Given estou na pagina de cadastrar trabalhador
    When eu preencho os campos de nome 'Breno', cpf_or_cnpj '10120230340', telefone '(83) 98719-8269', email 'breno@gmail.com', dataNascimento '2000-10-15', profissao 'Desenvolvedor', cidade 'Garanhuns', bairro 'Heliopolis', logradouro 'Rua Joaquim Tavora', cep '55295-410' e complemento 'Casa'
    And eu clico em cadastrar novo trabalhador
    Then eu vejo uma mensagem que o trabalhador nao foi cadastrado

  






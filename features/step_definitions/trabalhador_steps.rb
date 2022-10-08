Given('estou na pagina de cadastrar trabalhador') do
    visit 'trabalhadors/new'
end

When('eu preencho os campos de nome {string}, cpf_or_cnpj {string}, telefone {string}, email {string}, dataNascimento {string}, profissao {string}, cidade {string}, bairro {string}, logradouro {string}, cep {string} e complemento {string}') do |string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11|
  fill_in 'trabalhador[nome]', :with => string
  fill_in 'trabalhador[cpf_or_cnpj]', :with => string2
  fill_in 'trabalhador[telefone]', :with => string3
  fill_in 'trabalhador[email]', :with => string4
  fill_in 'trabalhador[dataNascimento]', :with => string5
  fill_in 'trabalhador[profissao]', :with => string6
  fill_in 'trabalhador[cidade]', :with => string7
  fill_in 'trabalhador[bairro]', :with => string8
  fill_in 'trabalhador[logradouro]', :with => string9
  fill_in 'trabalhador[cep]', :with => string10
  fill_in 'trabalhador[complemento]', :with => string11
end

When('eu clico em cadastrar novo trabalhador') do
    click_button 'Create Trabalhador'
end

Then('eu vejo uma mensagem que o trabalhador foi cadastrado com sucesso') do
    expect(page).to have_content('Trabalhador was successfully created.')
end


Given('o trabalhador de cpf_or_cnpj {string} existe') do |string|
  visit 'trabalhadors/new' 
  fill_in 'trabalhador[nome]', :with => 'Iago'
  fill_in 'trabalhador[cpf_or_cnpj]', :with => string
  fill_in 'trabalhador[telefone]', :with => '(87) 98848-7982'
  fill_in 'trabalhador[email]', :with => 'iago99@hotmail.com'
  fill_in 'trabalhador[dataNascimento]', :with => '1998-11-01'
  fill_in 'trabalhador[profissao]', :with => 'Analista'
  fill_in 'trabalhador[cidade]', :with => 'Garanhuns'
  fill_in 'trabalhador[bairro]', :with => 'Heliopolis'
  fill_in 'trabalhador[logradouro]', :with => 'Rua Joaquim Tavora'
  fill_in 'trabalhador[cep]', :with => '55295-410'
  fill_in 'trabalhador[complemento]', :with => 'Casa'
  click_button 'Create Trabalhador'
  expect(page).to have_content(string)
end
  
When('eu clico em editar trabalhador de cpf_or_cnpj {string}') do |cpf_or_cnpj|
  expect(page).to have_content(cpf_or_cnpj)
  click_link 'Edit this trabalhador'
end
  
When('eu atualizo o campo do trabalhado com o email {string}') do |email|
  fill_in 'trabalhador[email]', :with => email
  click_button 'Update Trabalhador'
end
  
Then('eu vejo que o trabalhador de cpf_or_cnpj {string} foi editado com sucesso') do |cpf_or_cnpj|
  expect(page).to have_content(cpf_or_cnpj)
end
  
Given('estou na pagina de todos os trabalhadores') do
  visit '/trabalhadors'
end

Given('o trabalhador de cpf_or_cnpj {string} esta cadastrado') do |string|
  visit 'trabalhadors/new' 
  fill_in 'trabalhador[nome]', :with => 'Solange'
  fill_in 'trabalhador[cpf_or_cnpj]', :with => string
  fill_in 'trabalhador[telefone]', :with => '(87) 98741-7842'
  fill_in 'trabalhador[email]', :with => 'solange@hotmail.com'
  fill_in 'trabalhador[dataNascimento]', :with => '1967-05-15'
  fill_in 'trabalhador[profissao]', :with => 'Contabilista'
  fill_in 'trabalhador[cidade]', :with => 'Garanhuns'
  fill_in 'trabalhador[bairro]', :with => 'Heliopolis'
  fill_in 'trabalhador[logradouro]', :with => 'Rua Joaquim Tavora'
  fill_in 'trabalhador[cep]', :with => '55295-410'
  fill_in 'trabalhador[complemento]', :with => 'Casa'
  click_button 'Create Trabalhador'
  expect(page).to have_content(string)  
end


Then('eu visualizo o trabalhador de cpf_or_cnpj {string}') do |string|
  expect(page).to have_content(string)
end


Given('vejo o trabalhador de cpf_or_cnpj {string}') do |string|
  visit 'trabalhadors/new' 
  fill_in 'trabalhador[nome]', :with => 'Breno'
  fill_in 'trabalhador[cpf_or_cnpj]', :with => string
  fill_in 'trabalhador[telefone]', :with => '(83) 98741-7842'
  fill_in 'trabalhador[email]', :with => 'breno@hotmail.com'
  fill_in 'trabalhador[dataNascimento]', :with => '2000-10-15'
  fill_in 'trabalhador[profissao]', :with => 'Desenvolvedor'
  fill_in 'trabalhador[cidade]', :with => 'Garanhuns'
  fill_in 'trabalhador[bairro]', :with => 'Heliopolis'
  fill_in 'trabalhador[logradouro]', :with => 'Rua Joaquim Tavora'
  fill_in 'trabalhador[cep]', :with => '55295-410'
  fill_in 'trabalhador[complemento]', :with => 'Casa'
  click_button 'Create Trabalhador'
  expect(page).to have_content(string)
end

When('eu clico em remover o trabalhador com cpf_or_cnpj {string}') do |string|
  expect(page).to have_content(string)
  click_button 'Destroy this trabalhador'
end

Then('eu vejo uma mensagem que o trabalhador foi removido com sucesso') do
  expect(page).to have_content('Trabalhador was successfully destroyed')  
end

Then('eu vejo uma mensagem que o trabalhador nao foi cadastrado') do
  expect(page).to have_content('Cpf or cnpj CPF inválido, ou Formato cpf: XXX.XXX.XXX-XX')
end

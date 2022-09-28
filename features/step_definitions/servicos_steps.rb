Given('estou na pagina de cadastrar um servico') do
  visit '/servicos'
end

Given('o trabalhador com cpf_or_cnpj {string} existe') do |string|
  visit 'trabalhadors/new'
  fill_in 'trabalhador[nome]', :with => 'Luciano'
  fill_in 'trabalhador[cpf_or_cnpj]', :with => string
  fill_in 'trabalhador[telefone]', :with => '(87) 98175-3993'
  fill_in 'trabalhador[email]', :with => 'luciano@hotmail.com'
  fill_in 'trabalhador[dataNascimento]', :with => '1992-11-15'
  fill_in 'trabalhador[profissao]', :with => 'Desenvolvedor'
  fill_in 'trabalhador[cidade]', :with => 'Garanhuns'
  fill_in 'trabalhador[bairro]', :with => 'Heliopolis'
  fill_in 'trabalhador[logradouro]', :with => 'Rua Dom Luis de Brito'
  fill_in 'trabalhador[cep]', :with => '55295-060'
  fill_in 'trabalhador[complemento]', :with => 'Segundo andar'
  click_button 'Create Trabalhador'
  visit 'servicos/new'
end

When('eu preencho os campos de nome {string}, descricao {string}, valor {string} e trabalhador_id {string}') do |string, string2, string3, string4|
  fill_in 'servico[nome]', :with => string
  fill_in 'servico[descricao]', :with => string2
  fill_in 'servico[valor]', :with => string3
  fill_in 'servico[trabalhador_id]', :with => string4
end

When ('eu clico em cadastrar novo servico') do
  click_button 'Create Servico'
end

Then('eu vejo uma mensagem que o servico foi cadastrado com sucesso') do
  expect(page).to have_content('Servico was successfully created.')
end

Given ('estou na pagina de servicos') do
  visit '/servicos/1'
end

Given ('o servico com descricao {string} existe') do |string|
  expect(page).to have_content(string)
end

When ('eu clico em editar servico com descricao {string}') do |string|
  click_link 'Edit this servico'
end

When('eu atualizo o campo do servico com a descricao {string}') do |string|
  fill_in 'trabalhador[email]', :with => email
end

When('clico em atualizar servico') do
  click_button 'Update Servico'
end

Then('eu vejo que o servico de nome {string} foi editado com sucesso') do |string|
  expect(page).to have_content(nome)
end

Then('eu vejo uma mensagem que o servico nao foi cadastrado') do
  expect(page).to have_content('2 errors prohibited this servico from being saved')
end

And('eu atualizo o campo do servico com o trabalhador_id {string}') do |string|
  fill_in 'servico[trabalhador_id]', :with => string
end

Then('eu vejo uma mensagem que o servico nao foi cadastrado por causa do valor') do
  expect(page).to have_content('3 errors prohibited this servico from being saved')
end
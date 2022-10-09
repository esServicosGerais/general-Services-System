Given('estou na pagina do servico de nome {string} existe') do |nome|
  visit 'trabalhadors/new'
  fill_in 'trabalhador[nome]', with: 'Luciano'
  fill_in 'trabalhador[cpf_or_cnpj]', with: '093.181.914-80'
  fill_in 'trabalhador[telefone]', with: '(87) 98175-3993'
  fill_in 'trabalhador[email]', with: 'luciano@hotmail.com'
  fill_in 'trabalhador[dataNascimento]', with: '1992-11-15'
  fill_in 'trabalhador[profissao]', with: 'Desenvolvedor'
  fill_in 'trabalhador[cidade]', with: 'Garanhuns'
  fill_in 'trabalhador[bairro]', with: 'Heliopolis'
  fill_in 'trabalhador[logradouro]', with: 'Rua Dom Luis de Brito'
  fill_in 'trabalhador[cep]', with: '55295-060'
  fill_in 'trabalhador[complemento]', with: 'Segundo andar'
  click_button 'Create Trabalhador'

  visit '/servicos/new'
  expect(page).to have_content('New servico')

  fill_in 'servico[nome]', with: 'Freela'
  fill_in 'servico[descricao]', with: 'Freelancer em delphi'
  fill_in 'servico[valor]', with: '80.00'
  fill_in 'servico[trabalhador_id]', with: 1
  click_button 'Create Servico'
  expect(page).to have_content(nome)
end

Given('eu clico em editar servico') do
  click_link 'Edit this servico'
  expect(page).to have_content('Editing servico')
end

When('eu atualizo a descricao para {string}') do |descricao|
  fill_in 'servico[descricao]', with: descricao
end

When('eu clico em atualizar servico') do
  click_button 'Update Servico'
end

Then('eu vejo uma mensagem que o servico foi atualizado com sucesso') do
  expect(page).to have_content('Servico was successfully updated.')
end

When('eu atualizo o valor do servico para {string}') do |valor|
  fill_in 'servico[valor]', with: valor
end

When('eu clico em remover o servico de nome {string}') do |nome|
  expect(page).to have_content(nome)
  click_button 'Destroy this servico'
end

Then('eu vejo uma mensagem que o servico foi apagado com sucesso') do
  expect(page).to have_content('Servico was successfully destroyed.')
end
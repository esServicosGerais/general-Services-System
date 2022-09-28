Given('estou na pagina de cliente') do
  visit '/clientes/new'
  expect(page).to have_content('New cliente')
end

When('eu preencho os campos de nome {string}, cpf {string}, telefone {string}, email {string}, dataNascimento {string}, cidade {string}, bairro {string}, logradouro {string}, cep {string} e complemento {string}') do |nome, cpf, telefone, email, dataNasc, cidade, bairro, logradouro, cep, complemento|
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[cpf]', :with => cpf
  fill_in 'cliente[telefone]', :with => telefone
  fill_in 'cliente[email]', :with => email
  fill_in 'cliente[dataNascimento]', :with => dataNasc
  fill_in 'cliente[cidade]', :with => cidade
  fill_in 'cliente[bairro]', :with => bairro
  fill_in 'cliente[logradouro]', :with => logradouro
  fill_in 'cliente[cep]', :with => cep
  fill_in 'cliente[complemento]', :with => complemento
end

When('eu clico em cadastrar novo cliente') do
  click_button 'Create Cliente'
end

Then('eu vejo uma mensagem que o cliente foi cadastrado com sucesso') do
  expect(page).to have_content('Cliente was successfully created.')
end


Given('o cliente de cpf {string} existe') do |cpf|
  fill_in 'cliente[nome]', :with => 'Lucas'
  fill_in 'cliente[cpf]', :with => cpf
  fill_in 'cliente[telefone]', :with => '(87) 98125-4587'
  fill_in 'cliente[email]', :with => 'lucasmoura@hotmail.com'
  fill_in 'cliente[dataNascimento]', :with => '2000-05-28'
  fill_in 'cliente[cidade]', :with => 'Garanhuns'
  fill_in 'cliente[bairro]', :with => 'Magano'
  fill_in 'cliente[logradouro]', :with => 'Severiano Filho'
  fill_in 'cliente[cep]', :with => '55294-273'
  fill_in 'cliente[complemento]', :with => 'Apartamento'
  click_button 'Create Cliente'
  expect(page).to have_content(cpf)
end

When('eu clico em editar cliente de cpf {string}') do |cpf|
  expect(page).to have_content(cpf)
  click_link 'Edit this cliente'
end

When('eu atualizo o campo com email {string}') do |email|
  fill_in 'cliente[email]', :with => email
  click_button 'Update Cliente'
end


Then('eu vejo que o cliente de cpf {string} foi editado com sucesso') do |cpf|
  expect(page).to have_content(cpf)
end

When('eu clico em remover o cliente com cpf {string}') do |cpf|
  click_button 'Destroy this cliente'
end

Then('eu vejo uma mensagem que o cliente foi removido com sucesso') do
  expect(page).to have_content('Cliente was successfully destroyed.')
end


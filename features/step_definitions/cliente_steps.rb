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


require "application_system_test_case"

class TrabalhadorsTest < ApplicationSystemTestCase
  setup do
    @trabalhador = trabalhadors(:one)
  end

  test "visiting the index" do
    visit trabalhadors_url
    assert_selector "h1", text: "Trabalhadors"
  end

  test "should create trabalhador" do
    visit trabalhadors_url
    click_on "New trabalhador"

    fill_in "Cpf/cnpj", with: @trabalhador.cpf/cnpj
    fill_in "Datanascimento", with: @trabalhador.dataNascimento
    fill_in "Email", with: @trabalhador.email
    fill_in "Endereco", with: @trabalhador.endereco_id
    fill_in "Nome", with: @trabalhador.nome
    fill_in "Profissão", with: @trabalhador.profissão
    fill_in "Telefone", with: @trabalhador.telefone
    click_on "Create Trabalhador"

    assert_text "Trabalhador was successfully created"
    click_on "Back"
  end

  test "should update Trabalhador" do
    visit trabalhador_url(@trabalhador)
    click_on "Edit this trabalhador", match: :first

    fill_in "Cpf/cnpj", with: @trabalhador.cpf/cnpj
    fill_in "Datanascimento", with: @trabalhador.dataNascimento
    fill_in "Email", with: @trabalhador.email
    fill_in "Endereco", with: @trabalhador.endereco_id
    fill_in "Nome", with: @trabalhador.nome
    fill_in "Profissão", with: @trabalhador.profissão
    fill_in "Telefone", with: @trabalhador.telefone
    click_on "Update Trabalhador"

    assert_text "Trabalhador was successfully updated"
    click_on "Back"
  end

  test "should destroy Trabalhador" do
    visit trabalhador_url(@trabalhador)
    click_on "Destroy this trabalhador", match: :first

    assert_text "Trabalhador was successfully destroyed"
  end
end

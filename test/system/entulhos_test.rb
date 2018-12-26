require "application_system_test_case"

class EntulhosTest < ApplicationSystemTestCase
  setup do
    @entulho = entulhos(:one)
  end

  test "visiting the index" do
    visit entulhos_url
    assert_selector "h1", text: "Entulhos"
  end

  test "creating a Entulho" do
    visit entulhos_url
    click_on "New Entulho"

    fill_in "Destino", with: @entulho.destino
    fill_in "Proprietario cep", with: @entulho.proprietario_cep
    fill_in "Proprietario cpf", with: @entulho.proprietario_cpf
    fill_in "Proprietario endereco", with: @entulho.proprietario_endereco
    fill_in "Proprietario nome", with: @entulho.proprietario_nome
    fill_in "Proprietario telefone", with: @entulho.proprietario_telefone
    fill_in "Quantidade", with: @entulho.quantidade
    fill_in "Tipo material", with: @entulho.tipo_material
    fill_in "Transportador cep", with: @entulho.transportador_cep
    fill_in "Transportador cpf", with: @entulho.transportador_cpf
    fill_in "Transportador endereco", with: @entulho.transportador_endereco
    fill_in "Transportador nome", with: @entulho.transportador_nome
    fill_in "Transportador telefone", with: @entulho.transportador_telefone
    fill_in "Transportador tipo transporte", with: @entulho.transportador_tipo_transporte
    click_on "Create Entulho"

    assert_text "Entulho was successfully created"
    click_on "Back"
  end

  test "updating a Entulho" do
    visit entulhos_url
    click_on "Edit", match: :first

    fill_in "Destino", with: @entulho.destino
    fill_in "Proprietario cep", with: @entulho.proprietario_cep
    fill_in "Proprietario cpf", with: @entulho.proprietario_cpf
    fill_in "Proprietario endereco", with: @entulho.proprietario_endereco
    fill_in "Proprietario nome", with: @entulho.proprietario_nome
    fill_in "Proprietario telefone", with: @entulho.proprietario_telefone
    fill_in "Quantidade", with: @entulho.quantidade
    fill_in "Tipo material", with: @entulho.tipo_material
    fill_in "Transportador cep", with: @entulho.transportador_cep
    fill_in "Transportador cpf", with: @entulho.transportador_cpf
    fill_in "Transportador endereco", with: @entulho.transportador_endereco
    fill_in "Transportador nome", with: @entulho.transportador_nome
    fill_in "Transportador telefone", with: @entulho.transportador_telefone
    fill_in "Transportador tipo transporte", with: @entulho.transportador_tipo_transporte
    click_on "Update Entulho"

    assert_text "Entulho was successfully updated"
    click_on "Back"
  end

  test "destroying a Entulho" do
    visit entulhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entulho was successfully destroyed"
  end
end

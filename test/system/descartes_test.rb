require "application_system_test_case"

class DescartesTest < ApplicationSystemTestCase
  setup do
    @descarte = descartes(:one)
  end

  test "visiting the index" do
    visit descartes_url
    assert_selector "h1", text: "Descartes"
  end

  test "creating a Descarte" do
    visit descartes_url
    click_on "New Descarte"

    fill_in "Destino", with: @descarte.destino
    fill_in "Proprietario cep", with: @descarte.proprietario_cep
    fill_in "Proprietario cpf", with: @descarte.proprietario_cpf
    fill_in "Proprietario endereco", with: @descarte.proprietario_endereco
    fill_in "Proprietario nome", with: @descarte.proprietario_nome
    fill_in "Proprietario telefone", with: @descarte.proprietario_telefone
    fill_in "Quantidade", with: @descarte.quantidade
    fill_in "Tipo material", with: @descarte.tipo_material
    fill_in "Transportador cep", with: @descarte.transportador_cep
    fill_in "Transportador cpf", with: @descarte.transportador_cpf
    fill_in "Transportador endereco", with: @descarte.transportador_endereco
    fill_in "Transportador nome", with: @descarte.transportador_nome
    fill_in "Transportador telefone", with: @descarte.transportador_telefone
    fill_in "Transportador tipo transporte", with: @descarte.transportador_tipo_transporte
    click_on "Create Descarte"

    assert_text "Descarte was successfully created"
    click_on "Back"
  end

  test "updating a Descarte" do
    visit descartes_url
    click_on "Edit", match: :first

    fill_in "Destino", with: @descarte.destino
    fill_in "Proprietario cep", with: @descarte.proprietario_cep
    fill_in "Proprietario cpf", with: @descarte.proprietario_cpf
    fill_in "Proprietario endereco", with: @descarte.proprietario_endereco
    fill_in "Proprietario nome", with: @descarte.proprietario_nome
    fill_in "Proprietario telefone", with: @descarte.proprietario_telefone
    fill_in "Quantidade", with: @descarte.quantidade
    fill_in "Tipo material", with: @descarte.tipo_material
    fill_in "Transportador cep", with: @descarte.transportador_cep
    fill_in "Transportador cpf", with: @descarte.transportador_cpf
    fill_in "Transportador endereco", with: @descarte.transportador_endereco
    fill_in "Transportador nome", with: @descarte.transportador_nome
    fill_in "Transportador telefone", with: @descarte.transportador_telefone
    fill_in "Transportador tipo transporte", with: @descarte.transportador_tipo_transporte
    click_on "Update Descarte"

    assert_text "Descarte was successfully updated"
    click_on "Back"
  end

  test "destroying a Descarte" do
    visit descartes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Descarte was successfully destroyed"
  end
end

require 'test_helper'

class DescartesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descarte = descartes(:one)
  end

  test "should get index" do
    get descartes_url
    assert_response :success
  end

  test "should get new" do
    get new_descarte_url
    assert_response :success
  end

  test "should create descarte" do
    assert_difference('Descarte.count') do
      post descartes_url, params: { descarte: { destino: @descarte.destino, proprietario_cep: @descarte.proprietario_cep, proprietario_cpf: @descarte.proprietario_cpf, proprietario_endereco: @descarte.proprietario_endereco, proprietario_nome: @descarte.proprietario_nome, proprietario_telefone: @descarte.proprietario_telefone, quantidade: @descarte.quantidade, tipo_material: @descarte.tipo_material, transportador_cep: @descarte.transportador_cep, transportador_cpf: @descarte.transportador_cpf, transportador_endereco: @descarte.transportador_endereco, transportador_nome: @descarte.transportador_nome, transportador_telefone: @descarte.transportador_telefone, transportador_tipo_transporte: @descarte.transportador_tipo_transporte } }
    end

    assert_redirected_to descarte_url(Descarte.last)
  end

  test "should show descarte" do
    get descarte_url(@descarte)
    assert_response :success
  end

  test "should get edit" do
    get edit_descarte_url(@descarte)
    assert_response :success
  end

  test "should update descarte" do
    patch descarte_url(@descarte), params: { descarte: { destino: @descarte.destino, proprietario_cep: @descarte.proprietario_cep, proprietario_cpf: @descarte.proprietario_cpf, proprietario_endereco: @descarte.proprietario_endereco, proprietario_nome: @descarte.proprietario_nome, proprietario_telefone: @descarte.proprietario_telefone, quantidade: @descarte.quantidade, tipo_material: @descarte.tipo_material, transportador_cep: @descarte.transportador_cep, transportador_cpf: @descarte.transportador_cpf, transportador_endereco: @descarte.transportador_endereco, transportador_nome: @descarte.transportador_nome, transportador_telefone: @descarte.transportador_telefone, transportador_tipo_transporte: @descarte.transportador_tipo_transporte } }
    assert_redirected_to descarte_url(@descarte)
  end

  test "should destroy descarte" do
    assert_difference('Descarte.count', -1) do
      delete descarte_url(@descarte)
    end

    assert_redirected_to descartes_url
  end
end

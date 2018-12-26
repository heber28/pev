require 'test_helper'

class EntulhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entulho = entulhos(:one)
  end

  test "should get index" do
    get entulhos_url
    assert_response :success
  end

  test "should get new" do
    get new_entulho_url
    assert_response :success
  end

  test "should create entulho" do
    assert_difference('Entulho.count') do
      post entulhos_url, params: { entulho: { destino: @entulho.destino, proprietario_cep: @entulho.proprietario_cep, proprietario_cpf: @entulho.proprietario_cpf, proprietario_endereco: @entulho.proprietario_endereco, proprietario_nome: @entulho.proprietario_nome, proprietario_telefone: @entulho.proprietario_telefone, quantidade: @entulho.quantidade, tipo_material: @entulho.tipo_material, transportador_cep: @entulho.transportador_cep, transportador_cpf: @entulho.transportador_cpf, transportador_endereco: @entulho.transportador_endereco, transportador_nome: @entulho.transportador_nome, transportador_telefone: @entulho.transportador_telefone, transportador_tipo_transporte: @entulho.transportador_tipo_transporte } }
    end

    assert_redirected_to entulho_url(Entulho.last)
  end

  test "should show entulho" do
    get entulho_url(@entulho)
    assert_response :success
  end

  test "should get edit" do
    get edit_entulho_url(@entulho)
    assert_response :success
  end

  test "should update entulho" do
    patch entulho_url(@entulho), params: { entulho: { destino: @entulho.destino, proprietario_cep: @entulho.proprietario_cep, proprietario_cpf: @entulho.proprietario_cpf, proprietario_endereco: @entulho.proprietario_endereco, proprietario_nome: @entulho.proprietario_nome, proprietario_telefone: @entulho.proprietario_telefone, quantidade: @entulho.quantidade, tipo_material: @entulho.tipo_material, transportador_cep: @entulho.transportador_cep, transportador_cpf: @entulho.transportador_cpf, transportador_endereco: @entulho.transportador_endereco, transportador_nome: @entulho.transportador_nome, transportador_telefone: @entulho.transportador_telefone, transportador_tipo_transporte: @entulho.transportador_tipo_transporte } }
    assert_redirected_to entulho_url(@entulho)
  end

  test "should destroy entulho" do
    assert_difference('Entulho.count', -1) do
      delete entulho_url(@entulho)
    end

    assert_redirected_to entulhos_url
  end
end

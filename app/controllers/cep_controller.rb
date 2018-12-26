class CepController < ApplicationController
  def pesquisar_por_cep
    begin
      endereco = BuscaEndereco.cep params[:cep]
      address = Hash.new
      address[:neighborhood] = endereco[:bairro]
      address[:zipcode] = endereco[:cep]
      address[:city] = endereco[:cidade]
      address[:complement] = ""
      address[:address] = endereco[:tipo_logradouro] + " " + endereco[:logradouro]
      address[:state] = endereco[:uf]
      render :json => address.to_json
    rescue
      render :json => ["", "", "", "", ""].to_json
    end 
  end
end

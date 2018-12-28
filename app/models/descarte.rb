class Descarte < ApplicationRecord
  validates :proprietario_nome, :presence => true
  before_save :verificar_cpf

  private

  #require "cpf_cnpj"  

  def verificar_cpf
    false
    #if !proprietario_cpf.blank?
    #  if !CPF.valid?(self.proprietario_cpf)
    #    errors.add(:cpf, "Cpf inválido")
    #    false
    #  end
    #end
  end

end

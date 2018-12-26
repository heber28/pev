class CreateEntulhos < ActiveRecord::Migration[5.2]
  def change
    create_table :entulhos do |t|
      t.string :proprietario_nome
      t.string :proprietario_cpf
      t.string :proprietario_cep
      t.string :proprietario_endereco
      t.string :proprietario_telefone
      t.string :tipo_material
      t.string :quantidade
      t.string :destino
      t.string :transportador_nome
      t.string :transportador_cpf
      t.string :transportador_cep
      t.string :transportador_endereco
      t.string :transportador_telefone
      t.string :transportador_tipo_transporte

      t.timestamps
    end
  end
end

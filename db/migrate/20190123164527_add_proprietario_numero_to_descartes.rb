class AddProprietarioNumeroToDescartes < ActiveRecord::Migration[5.2]
  def change
    add_column :descartes, :proprietario_numero, :string
  end
end

class AddPorcentajeToSimpletask < ActiveRecord::Migration[5.0]
  def change
    add_column :simpletasks, :porcentaje, :string
  end
end

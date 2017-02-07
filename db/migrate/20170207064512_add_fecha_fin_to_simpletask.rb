class AddFechaFinToSimpletask < ActiveRecord::Migration[5.0]
  def change
    add_column :simpletasks, :fecha_fin, :date
  end
end

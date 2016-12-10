class CreateSimpletasks < ActiveRecord::Migration[5.0]
  def change
    create_table :simpletasks do |t|
      t.string :descripcion
      t.string :estado
      t.string :prioridad
      t.references :listask, foreign_key: true

      t.timestamps
    end
  end
end

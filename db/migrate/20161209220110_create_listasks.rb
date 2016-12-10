class CreateListasks < ActiveRecord::Migration[5.0]
  def change
    create_table :listasks do |t|
      t.string :nombre
      t.string :url
      t.date :fecha_creacion
      t.date :ultimo_update

      t.timestamps
    end
  end
end

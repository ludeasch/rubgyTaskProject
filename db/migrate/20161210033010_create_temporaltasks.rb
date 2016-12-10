class CreateTemporaltasks < ActiveRecord::Migration[5.0]
  def change
    create_table :temporaltasks do |t|
      t.date :fecha_validez

      t.timestamps
    end
  end
end

class CreateLongtasks < ActiveRecord::Migration[5.0]
  def change
    create_table :longtasks do |t|
      t.integer :porcentaje

      t.timestamps
    end
  end
end

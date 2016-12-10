class CreateTaskManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :task_managers do |t|
      t.string :descripcion
      t.string :estado
      t.references :listask, foreign_key: true

      t.timestamps
    end
  end
end

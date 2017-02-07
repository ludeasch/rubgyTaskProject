class AddTypeToSimpletask < ActiveRecord::Migration[5.0]
  def change
    add_column :simpletasks, :type, :string
  end
end

class AddSlugToListask < ActiveRecord::Migration[5.0]
  def change
    add_column :listasks, :slug, :string
  end
end

class ChangeType < ActiveRecord::Migration[5.0]
  def change
  	 rename_column :simpletasks, :type, :tasktype
  end
end

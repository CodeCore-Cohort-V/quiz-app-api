class ChangeChoicesValueName < ActiveRecord::Migration
  def change
    rename_column :choices, :corrent, :correct
  end
end

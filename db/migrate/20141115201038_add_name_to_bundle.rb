class AddNameToBundle < ActiveRecord::Migration
  def change
    add_column :bundles, :name, :string
  end
end

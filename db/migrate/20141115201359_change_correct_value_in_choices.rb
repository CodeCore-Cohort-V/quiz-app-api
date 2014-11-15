class ChangeCorrectValueInChoices < ActiveRecord::Migration
  def change
    remove_column :choices, :correct, :string
    add_column :choices, :correct, :boolean
  end
end

class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :difficulty
      t.boolean :approved
      t.references :user
      t.references :topic

      t.timestamps
    end
  end
end

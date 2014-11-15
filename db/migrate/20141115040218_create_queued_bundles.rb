class CreateQueuedBundles < ActiveRecord::Migration
  def change
    create_table :queued_bundles do |t|
      t.references :user
      t.references :bundle

      t.timestamps
    end
  end
end

class DropQueuedBundlesTable < ActiveRecord::Migration
  def change
    drop_table :queued_bundles do |t|
      t.references :user
      t.references :bundle

      t.timestamps
    end
  end
end

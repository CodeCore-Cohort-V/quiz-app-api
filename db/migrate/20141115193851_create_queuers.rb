class CreateQueuers < ActiveRecord::Migration
  def change
    create_table :queuers do |t|

      t.timestamps
    end
  end
end

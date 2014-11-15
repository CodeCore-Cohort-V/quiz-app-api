class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.references :user, index: true
      t.references :choice, index: true

      t.timestamps
    end
  end
end

class CreateQueuer < ActiveRecord::Migration
  def change
    create_table :queuers do |t|
      t.integer :last_question_id, index: true
      t.references :user
      t.references :bundle

      t.timestamps
    end
  end
end

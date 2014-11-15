class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :corrent
      t.references :question

      t.timestamps
    end
  end
end

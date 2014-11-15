class AddExampleColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :example, :text
  end
end

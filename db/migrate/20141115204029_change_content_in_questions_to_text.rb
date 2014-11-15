class ChangeContentInQuestionsToText < ActiveRecord::Migration
  def change
    remove_column :questions, :content
    add_column :questions, :content, :text
  end
end

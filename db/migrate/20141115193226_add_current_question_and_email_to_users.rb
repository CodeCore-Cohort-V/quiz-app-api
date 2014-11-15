class AddCurrentQuestionAndEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_question, :string
    rename_column :users, :username, :email
  end
end

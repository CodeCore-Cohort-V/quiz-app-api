class AddLastQuestionIdToQueuedBundle < ActiveRecord::Migration
  def change
    add_column :queuers, :last_question_id, :integer, index: true
  end
end

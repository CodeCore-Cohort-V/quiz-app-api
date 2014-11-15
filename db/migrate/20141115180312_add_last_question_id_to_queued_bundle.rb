class AddLastQuestionIdToQueuedBundle < ActiveRecord::Migration
  def change
    add_column :queued_bundles, :last_question_id, :integer, index: true
  end
end

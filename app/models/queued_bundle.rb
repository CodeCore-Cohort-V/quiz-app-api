class QueuedBundle < ActiveRecord::Base
  belongs_to :user
  belongs_to :bundle
end

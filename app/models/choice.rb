class Choice < ActiveRecord::Base
  has_many :attempts
  belongs_to :question

  # validates :correct, presence: true
  validates :content, presence: true

end

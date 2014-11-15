class Bundle < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  has_many :questions
  has_many :queuers
  
  validates :difficulty, presence: true

end

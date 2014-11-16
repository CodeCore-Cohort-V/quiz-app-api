class Bundle < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  has_many :questions
  accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
  has_many :queuers
  
  validates :difficulty, presence: true
  validates :name, presence: true


end

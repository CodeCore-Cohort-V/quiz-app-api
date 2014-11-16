class Question < ActiveRecord::Base
  belongs_to :bundle
  has_many :choices
  accepts_nested_attributes_for :choices, :reject_if => :all_blank, :allow_destroy => true

  validates :type, presence: true
  validates :content, presence: true

end

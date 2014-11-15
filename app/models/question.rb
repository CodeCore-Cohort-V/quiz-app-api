class Question < ActiveRecord::Base
  belongs_to :bundle
  has_many :choices

  validates :type, presence: true
  validates :content, presence: true

end

class Question < ActiveRecord::Base
  belongs_to :bundle
  has_many :choices

  validates :type, presence: true

end

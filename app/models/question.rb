class Question < ActiveRecord::Base
  belongs_to :bundle
  has_many :choices
end

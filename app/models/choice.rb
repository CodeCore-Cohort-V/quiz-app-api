class Choice < ActiveRecord::Base
  has_many :attempts
  belongs_to :question
end

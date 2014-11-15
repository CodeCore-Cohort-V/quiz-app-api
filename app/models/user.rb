class User < ActiveRecord::Base
  has_many :attempts
  has_many :choices, through: :attempts



end
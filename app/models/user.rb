class User < ActiveRecord::Base
  has_many :attempts
  has_many :choices, through: :attempts

  has_many :bundles
  has_many :queuers
  has many :queued_bundles, through: :queuers, source: :bundle

end
class User < ActiveRecord::Base
  has_secure_password

  has_many :attempts
  has_many :choices, through: :attempts

  has_many :bundles
  has_many :queuers
  has_many :queued_bundles, through: :queuers, source: :bundle

  validates :email, presence: true, uniqueness: true

end

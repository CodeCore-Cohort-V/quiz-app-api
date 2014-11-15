class User < ActiveRecord::Base
  has_secure_password

  validates: :email, uniqueness: true, presence: true,
   format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: [:create, :update] }
end

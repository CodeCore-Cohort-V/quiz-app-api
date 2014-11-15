class Topic < ActiveRecord::Base
  has_many :bundles

  validates :name, presence: true
end

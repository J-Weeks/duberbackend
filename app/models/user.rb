#
class User < ActiveRecord::Base
  include Authentication
  has_many :dogs, dependent: :destroy
  has_many :walkers, through: :dogs
end

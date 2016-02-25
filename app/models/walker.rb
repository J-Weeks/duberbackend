class Walker < ActiveRecord::Base
  has_many :dogs
  has_many :owners, through: :dogs
end

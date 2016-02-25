class WalkerSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :address, :first_name, :last_name, :description, :url, :rating
  has_many :dogs
end

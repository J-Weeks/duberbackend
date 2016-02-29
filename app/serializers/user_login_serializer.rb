#
class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :address, :first_name, :last_name, :description, :url
end

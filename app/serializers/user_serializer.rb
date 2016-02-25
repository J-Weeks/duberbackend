#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :description, :url # , :can_edit
  has_many :dogs, embed: :objects, include: false

  # def can_edit
  #   # defaults to current user which may be nil
  #   scope ? scope == object : false
  # end
end

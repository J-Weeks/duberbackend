#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email # , :can_edit
  has_many :dogs, embed: :ids, include: false

  # def can_edit
  #   # defaults to current user which may be nil
  #   scope ? scope == object : false
  # end
end

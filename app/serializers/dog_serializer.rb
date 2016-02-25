class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :description, :size, :note, :url, :rating
  belongs_to :walker
  belongs_to :user
end

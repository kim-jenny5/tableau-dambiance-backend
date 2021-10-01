class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :photos
  belongs_to :user
  has_many :pictures
end

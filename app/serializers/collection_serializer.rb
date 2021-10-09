class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :user
  has_many :pictures
end

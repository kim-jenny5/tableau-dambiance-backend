class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  belongs_to :user
  has_many :pictures
end

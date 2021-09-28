class PictureSerializer < ActiveModel::Serializer
  attributes :id
  # has_one :collection
  belongs_to :collection
end

class PictureSerializer < ActiveModel::Serializer
  attributes :id, :url
  belongs_to :collection
end

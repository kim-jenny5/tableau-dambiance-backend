class PictureSerializer < ActiveModel::Serializer
  attributes :id, :filename
  # has_one :collection
  belongs_to :collection
end

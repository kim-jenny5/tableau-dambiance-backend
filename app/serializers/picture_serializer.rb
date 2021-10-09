class PictureSerializer < ActiveModel::Serializer
  attributes :id, :pic_url
  belongs_to :collection
end

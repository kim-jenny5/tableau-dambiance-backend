class PictureSerializer < ActiveModel::Serializer
  # attributes :id, :photos
  attributes :id
  # , :img_file
  belongs_to :collection
end

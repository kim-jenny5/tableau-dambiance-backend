class PictureSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers
  # attributes :id, :photos
  attributes :id, :url
  # , :img_file
  belongs_to :collection

  def url
    # pictures = Picture.
    Rails.application.routes.url_helpers.rails_blob_path(object.img_file, only_path: true)
  end
end

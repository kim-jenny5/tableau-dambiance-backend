class PictureSerializer < ActiveModel::Serializer
  attributes :id, :url
  # attributes :id
  belongs_to :collection

  def url
    Rails.application.routes.url_helpers.rails_blob_path(object.img_file, object.signed_id, object.filename, only_path: true)
  end
end

class Picture < ApplicationRecord
  has_one_attached :img_file
  belongs_to :collection

  def url
    self.img_file.attachment.service_url
  end
end

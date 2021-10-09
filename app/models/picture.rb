class Picture < ApplicationRecord
  has_one_attached :img_file
  belongs_to :collection

  def pic_url
    # self.img_file.attachment.service_url
    self.img_file.attachment.url
  end
end

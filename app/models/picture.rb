class Picture < ApplicationRecord
  has_one_attached :img_file
  belongs_to :collection

  def photos
    # byebug
  end
end

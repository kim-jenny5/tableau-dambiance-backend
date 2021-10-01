class Collection < ApplicationRecord
  has_many :pictures
  belongs_to :user

  def photos
    # byebug
    self.pictures
  end
end

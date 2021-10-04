class Collection < ApplicationRecord
  has_many :pictures
  belongs_to :user
end

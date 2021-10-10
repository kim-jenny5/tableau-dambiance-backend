class Collection < ApplicationRecord
  has_many :pictures, dependent: :delete_all
  belongs_to :user
end

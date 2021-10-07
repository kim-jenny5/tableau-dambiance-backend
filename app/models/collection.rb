class Collection < ApplicationRecord
  has_many :pictures, dependent: :delete_all # FOR TESTING
  # has_many :pictures, dependent: :destroy FOR PRODUCTION
  belongs_to :user
end

class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :pictures, :created_at
  belongs_to :user

  # def pictures
  #   ActiveStorage::Blob.all
  #   # ActiveStorage::Blob.select do |x|
  #     Collection.all.each do |collection|
  #       collection.pictures.all.each do |picture|
  #         # debugger
  #         # ActiveStorage::Blob.where(blob_id: picture.id)
  #         ActiveStorage::Blob.find(picture.id)
  #       end
  #     end
  #     # until (Collection.count + 1)

  #     # x.id == 
  #   # end
  #   # ActiveStorage::Attachment.all
  #   # ActiveStorage::Blob.all.where(ActiveStorage::Attachment.where(record_id:))
  #   # Collection.all.each do |collection|
  #     # id = collection.id
  #     # ActiveStorage::Attachment.find_by_record_id(id)
  #     # ActiveStorage::Blob.find_by_record_id(id)
  #     # ActiveStorage::Attachment.where(record_id: collection.id)
  #     # Find the blob id through record id through Attachment and get blob id to match Blob
  #     # ActiveStorage::Attachment.select do |x|
  #     #   x.record_id == id
  #     # end
  #   # end


  # end
end

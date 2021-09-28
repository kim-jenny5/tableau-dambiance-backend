class RemoveFilenameFromPictures < ActiveRecord::Migration[6.1]
  def change
    remove_column :pictures, :filename, :string
  end
end

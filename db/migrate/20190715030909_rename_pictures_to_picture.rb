class RenamePicturesToPicture < ActiveRecord::Migration[5.2]
  def change
	  rename_column :posts, :pictures, :picture
  end
end

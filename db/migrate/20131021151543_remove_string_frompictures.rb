class RemoveStringFrompictures < ActiveRecord::Migration
  def change
      remove_column :pictures, :String
  end
end

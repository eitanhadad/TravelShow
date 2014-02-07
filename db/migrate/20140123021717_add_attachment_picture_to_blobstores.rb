class AddAttachmentPictureToBlobstores < ActiveRecord::Migration
  def self.up
    change_table :blobstores do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :blobstores, :picture
  end
end

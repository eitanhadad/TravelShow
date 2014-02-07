class CreateBlobstores < ActiveRecord::Migration
  def change
    create_table :blobstores do |t|
      t.string :name
      t.string :continent
      t.string :country
      t.string :city
      t.string :title
      t.string :caption

      t.timestamps
    end
  end
end

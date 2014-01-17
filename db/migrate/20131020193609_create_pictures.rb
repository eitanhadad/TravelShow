class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :travel_id
      t.string :String
      t.string :image_url
      t.string :day_id
      t.string :String

      t.timestamps
    end
  end
end

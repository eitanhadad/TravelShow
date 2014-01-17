class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :message
      t.string :posted_by
      t.date :posted_date

      t.timestamps
    end
  end
end

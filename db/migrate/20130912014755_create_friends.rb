class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :user_name
      t.string :friend_user_name
      t.integer :active
      t.date :active_since
      t.date :created_at
      t.string :image

      t.timestamps
    end
  end
end

class AddFriendIdToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :friend_id, :integer
  end
end

class AddTravelIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :travel_id, :int
  end
end

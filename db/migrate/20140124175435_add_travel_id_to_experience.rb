class AddTravelIdToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :travel_id, :int
  end
end

class AddTravelIntroToTravels < ActiveRecord::Migration
  def change
    add_column :travels, :travel_intro, :string
  end
end

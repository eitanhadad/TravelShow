class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :travel
      t.string :title
      t.string :friend
      t.date :created_at

      t.timestamps
    end
  end
end

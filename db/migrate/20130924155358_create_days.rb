class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :travel_id
      t.string :title
      t.string :country
      t.string :area
      t.string :hotel
      t.string :car
      t.string :comment
      t.date :created_at

      t.timestamps
    end
  end
end

class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :continent
      t.string :country
      t.string :city
      t.string :area
      t.string :recommended

      t.timestamps
    end
  end
end

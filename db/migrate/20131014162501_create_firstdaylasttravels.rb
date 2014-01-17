class CreateFirstdaylasttravels < ActiveRecord::Migration
  def change
    create_table :firstdaylasttravels do |t|
      t.string :friend_name
      t.string :last_travel
      t.integer :first_day

      t.timestamps
    end
  end
end

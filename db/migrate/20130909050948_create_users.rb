class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :email_address
      t.integer :active
      t.text :address
      t.date :dob

      t.timestamps
    end
  end
end

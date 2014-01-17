class AddFrontPageImageToTravels < ActiveRecord::Migration
  def change
    add_column :travels, :front_page_image, :string
  end
end

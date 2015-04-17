class AddImageToUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :image, :string 
  end
end

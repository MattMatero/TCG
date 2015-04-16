class AddUsernameToUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :username, :string	
  end
end

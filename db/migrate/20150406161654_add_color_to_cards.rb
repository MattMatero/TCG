class AddColorToCards < ActiveRecord::Migration
  def change
  	add_column :Cards, :Color, :string
  end
end

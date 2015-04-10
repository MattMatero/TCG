class FixColorColumn < ActiveRecord::Migration
  class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :Cards, :Color, :color
  end
end
end

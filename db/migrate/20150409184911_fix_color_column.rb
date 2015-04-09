class FixColorColumn < ActiveRecord::Migration
  class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :cards, :Color, :color
  end

  def self.down
    rename_column :cards, :color, :Color
  end
end
end

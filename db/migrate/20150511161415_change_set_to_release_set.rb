class ChangeSetToReleaseSet < ActiveRecord::Migration
   def change
    rename_column :cards, :set, :release_set
  end
end

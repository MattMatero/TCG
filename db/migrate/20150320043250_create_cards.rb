class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :card_id
      t.string :price
      t.string :set

      t.timestamps null: false
    end
  end
end

class CreatePurcahses < ActiveRecord::Migration
  def change
    create_table :purcahses do |t|
      t.string :item
      t.decimal :price

      t.timestamps
    end
  end
end

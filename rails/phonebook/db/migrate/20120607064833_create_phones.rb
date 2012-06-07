class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|

      t.timestamps
    end
  end
end

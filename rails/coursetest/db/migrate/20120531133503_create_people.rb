class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :first_name
      t.text :last_name
      t.text :email

      t.timestamps
    end
  end

  # another command that can be added is add_index
end

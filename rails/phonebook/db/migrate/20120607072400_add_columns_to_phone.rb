class AddColumnsToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :user, :string
  end
end

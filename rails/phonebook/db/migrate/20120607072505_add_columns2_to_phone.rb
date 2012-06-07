class AddColumns2ToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :phone, :string
  end
end

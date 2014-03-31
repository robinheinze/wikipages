class BiggerInt < ActiveRecord::Migration
  def change
    remove_column :phones, :number
    add_column :phones, :number, :bigint
  end
end

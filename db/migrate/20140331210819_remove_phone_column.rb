class RemovePhoneColumn < ActiveRecord::Migration
  def change
    remove_column :contacts, :phone
  end
end

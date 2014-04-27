class AddPhoneEmailToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :phone, :string
    add_column :contacts, :email, :string
  end
end

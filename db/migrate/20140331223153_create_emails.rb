class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.column :email_address, :string
      t.column :contact_id, :integer
    end

    remove_column :contacts, :email
  end
end

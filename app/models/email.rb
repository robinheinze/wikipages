class Email < ActiveRecord::Base
  validates :email_address, :presence => true
  belongs_to :contact
end

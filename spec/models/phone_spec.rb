require 'spec_helper'

describe Phone do
  it { should validate_presence_of :number }
  it { should validate_presence_of :contact_id }

  it { should belong_to :contact}

  it 'should accept bigints in the number field' do
    new_phone = Phone.create(:number => 9999999999, :contact_id => 1)
    new_phone.number.should eq 9999999999
  end
end

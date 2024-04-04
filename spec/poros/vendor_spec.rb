require 'rails_helper'

RSpec.describe Vendor do
  before(:each) do
    attributes = {
      :id=>"55823",
      :type=>"vendor",
      :attributes=>
      {
        :name=>"The Charcuterie Corner",
        :description=>"Vendor selling a variety of artisanal cured meats and sausages.",
        :contact_name=>"Claudie Langworth III",
        :contact_phone=>"1-147-179-9747",
        :credit_accepted=>false
      }
    }

    @vendor = Vendor.new(attributes)
  end

  it 'is a vendor' do
    expect(@vendor).to be_a Vendor
  end

  it 'has attributes' do
    expect(vendor.name).to eq "The Charcuterie Corner"
    expect(vendor.description).to eq "Vendor selling a variety of artisanal cured meats and sausages."
    expect(vendor.contact_name).to eq "Claudie Langworth III"
    expect(vendor.contact_phone).to eq "1-147-179-9747"
    expect(vendor.credit_accepted).to eq false
  end
end
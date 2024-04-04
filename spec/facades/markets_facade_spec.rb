require 'rails_helper'

RSpec.describe MarketsFacade, :vcr do
  before(:each) do
    @facade = MarketsFacade.new
  end

  it 'exists' do
    expect(@facade).to be_a MarketsFacade
  end

  it 'creates market objects and returns all markets' do
    expect(@facade.markets).to be_an Array
  end
end
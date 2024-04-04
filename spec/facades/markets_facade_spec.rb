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
    
    @facade.markets.each do |market|
      expect(market).to be_a Market
    end
  end

  it 'creates a market object and return market by id' do
    expect(@facade.market_by_id("322458")).to be_a Market
  end

  it 'returns market_vendors by market id and creates vendor objects' do
    @facade.market_vendors("322458").each do |vendor|
      expect(vendor).to be_a Vendor
    end
  end
end
require 'rails_helper'

RSpec.describe MarketsService, :vcr do
  before(:each) do
    @service = MarketsService.new
  end

  it 'exists' do
    expect(@service).to be_a MarketsService
  end

  it 'can establish a connection' do
    expect(@service.conn).to be_a Faraday::Connection
  end

  it 'returns all markets' do
    markets = @service.all_markets
    expect(markets).to be_a Hash
    expect(markets[:data]).to be_an Array

    market = markets[:data].first
    expect(market).to have_key :attributes
    expect(market[:attributes]).to be_a Hash
    
    expect(market[:attributes]).to have_key :name
    expect(market[:attributes][:name]).to be_a String

    expect(market[:attributes]).to have_key :street
    expect(market[:attributes][:street]).to be_a String

    expect(market[:attributes]).to have_key :city
    expect(market[:attributes][:city]).to be_a String

    expect(market[:attributes]).to have_key :county
    expect(market[:attributes][:county]).to be_a String

    expect(market[:attributes]).to have_key :state
    expect(market[:attributes][:state]).to be_a String

    expect(market[:attributes]).to have_key :zip
    expect(market[:attributes][:zip]).to be_a String

    expect(market[:attributes]).to have_key :lat
    expect(market[:attributes][:lat]).to be_a String

    expect(market[:attributes]).to have_key :lon
    expect(market[:attributes][:lon]).to be_a String

    expect(market[:attributes]).to have_key :vendor_count
    expect(market[:attributes][:vendor_count]).to be_an Integer
  end

  it 'returns a market by id' do
    market = @service.market_by_id("322458")

    expect(market).to be_a Hash
    expect(market[:data]).to be_a Hash
    expect(market[:data]).to have_key :id
    expect(market[:data]).to have_key :attributes

    market_data = market[:data]
    expect(market_data[:attributes]).to have_key :name
    expect(market_data[:attributes][:name]).to be_a String

    expect(market_data[:attributes]).to have_key :street
    expect(market_data[:attributes][:street]).to be_a String

    expect(market_data[:attributes]).to have_key :city
    expect(market_data[:attributes][:city]).to be_a String

    expect(market_data[:attributes]).to have_key :county
    expect(market_data[:attributes][:county]).to be_a String

    expect(market_data[:attributes]).to have_key :state
    expect(market_data[:attributes][:state]).to be_a String

    expect(market_data[:attributes]).to have_key :zip
    expect(market_data[:attributes][:zip]).to be_a String

    expect(market_data[:attributes]).to have_key :lat
    expect(market_data[:attributes][:lat]).to be_a String

    expect(market_data[:attributes]).to have_key :lon
    expect(market_data[:attributes][:lon]).to be_a String

    expect(market_data[:attributes]).to have_key :vendor_count
    expect(market_data[:attributes][:vendor_count]).to be_an Integer
  end
end
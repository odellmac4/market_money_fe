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
end
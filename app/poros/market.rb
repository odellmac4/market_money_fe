class Market
  attr_reader :id, :name, :city, :state, :street, :zip, :vendors
  def initialize(market_data)
    @id = market_data[:id]
    @name = market_data[:attributes][:name]
    @city = market_data[:attributes][:city]
    @state = market_data[:attributes][:state]
    @street = market_data[:attributes][:street]
    @zip = market_data[:attributes][:zip]
    @vendors = nil
  end
end
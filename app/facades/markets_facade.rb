class MarketsFacade

  def initialize(service = MarketsService.new)
    @service = service
    @market = nil
  end

  def markets
    json = @service.all_markets
    
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end
  
  def market_by_id(id)
    @market ||= begin
      json = @service.market_by_id(id)
      @market = Market.new(json[:data])
    end
  end

  def market_vendors(id)
    json = @service.market_vendors(id)
    vendors = json[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end
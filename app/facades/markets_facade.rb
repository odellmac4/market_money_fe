class MarketsFacade

  def initialize(service = MarketsService.new)
    @service = service
  end

  def markets
    json = @service.all_markets
    
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end
end
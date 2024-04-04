class MarketsController < ApplicationController
  def index
    @facade = MarketsFacade.new
  end

  def show
    @market = MarketsFacade.new.market_by_id(id)
    @vendors = MarketsFacade.new.market_vendors(id)
  end

  private

  def id
    params[:id]
  end
end
class MarketsController < ApplicationController
  def index
    @facade = MarketsFacade.new
  end
end
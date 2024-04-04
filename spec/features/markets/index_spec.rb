require 'rails_helper'

RSpec.describe 'Markets index page', :vcr do
  describe 'User story 1' do
    it 'displays all markets listed with their name, city and state' do
      markets = MarketsFacade.new.markets
      # When I visit '/markets'
      visit markets_path
      # I see all markets listed with their name, city and state
      expect(page).to have_css(".markets")

      within(first(".markets")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".city")
        expect(page).to have_css(".state")
        expect(page).to have_css(".more_info")

        click_on "More Info"
        expect(current_path).to eq(market_path(markets.first.id))
      end

      # When I click a button to see more info on that market
      # I'm taken to that market's show page '/markets/:id'
      
    end
  end
end
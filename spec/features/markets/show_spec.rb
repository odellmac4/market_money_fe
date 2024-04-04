require 'rails_helper'

RSpec.describe 'Markets show page', :vcr do
  describe 'User story 2' do
    it 'displays market name and address' do
      market = MarketsFacade.new.market_by_id("322458")

      visit market_path(market.id)

      expect(page).to have_content "14&U Farmers' Market"
      expect(page).to have_content "1400 U Street NW"
      expect(page).to have_content "Washington"
      expect(page).to have_content "District of Columbia"
      expect(page).to have_content "20009"

      expect(page).to have_css(".vendors")

      within(first(".vendors")) do
        expect(page).to have_link("The Charcuterie Corner")

        click_on "The Charcuterie Corner"
        expect(current_path).to eq(market_vendor_path("322458", "55823"))
      end
    end
  end
end
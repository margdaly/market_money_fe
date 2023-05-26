require 'rails_helper'

RSpec.describe 'Markets Service' do
  describe 'get_markets' do
    it 'returns all markets', :vcr do
      markets = MarketsService.new.get_markets

      expect(markets).to be_a(Hash)
      expect(markets).to have_key(:data)

      expect(markets[:data]).to be_an(Array)
      market_data = markets[:data].first

      expect(market_data).to have_key(:id)
      expect(market_data[:id]).to be_a(String)

      expect(market_data).to have_key(:type)
      expect(market_data[:type]).to eq('market')

      expect(market_data).to have_key(:attributes)
      attributes = market_data[:attributes]

      expect(attributes).to have_key(:name)
    end
  end
end
require 'rails_helper'

RSpec.describe 'markets index' do
  it 'retrieves a list of markets' do
    visit markets_path
    expect(page).to have_content('Markets')

    expect(page).to have_content('Washington')
    expect(page).to have_content('District of Columbia')
    expect(page).to have_link("14&U Farmers' Market")

    click_link("14&U Farmers' Market")
    expect(current_path).to eq(market_path(322458))

    visit markets_path

    expect(page).to have_content('Sparks')
    expect(page).to have_content('Nevada')
    expect(page).to have_link('39 North Marketplace')

    click_link('39 North Marketplace')
    expect(current_path).to eq(market_path(322482))
  end
end

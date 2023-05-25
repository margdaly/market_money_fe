require 'rails_helper'

RSpec.describe "market's show" do
  it "retrieves the market's name and address" do
    visit market_path(325933)

    expect(page).to have_content('Henry County Farmers Market')
    expect(page).to have_content('100 block of S Main Street')
    expect(page).to have_content('New Castle , Indiana , 47632')
    expect(page).to have_content('Vendors at our Market')
  end

  it 'retrieves a list of vendors that sell at that market' do
    visit market_path(325933)
    click_link('Elevated Elixir')
    expect(current_path).to eq(vendor_path(55636))

    visit market_path(322482)
    click_link('Saddle Up Smoothies')
    expect(current_path).to eq(vendor_path(55340))
  end
end

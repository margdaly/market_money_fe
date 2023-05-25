require 'rails_helper'

RSpec.describe "vendor's show" do
  it "retrieves the vendor's name and address" do
    visit vendor_path(55340)

    expect(page).to have_content('Saddle Up Smoothies')
    expect(page).to have_content('Contact Info:')
    expect(page).to have_content('name: Trang Kling II')
    expect(page).to have_content('phone: 1-866-326-0903')
    expect(page).to have_content('credit accepted?: false')
    expect(page).to have_content('description: smoothie and juice vendor')
  end
end

require 'rails_helper'

RSpec.describe Listing, type: :model do
  it 'should allow valid attributes' do
    listing = Listing.new title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'us'
    expect(listing).to be_valid
  end

  it 'should create full address' do
    listing = Listing.new title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'us'
    expect(listing.full_address).to eq('1600 Pennsylvania Avenue NW, Washington, DC, United States of America')
  end

  it 'should disallow invalid attributes' do
    listing = Listing.new
    expect(listing).to be_invalid

    listing = Listing.new title: '', street_address: '', city: '', country_code: ''
    expect(listing).to be_invalid

    listing = Listing.new title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'zz'
    expect(listing).to be_invalid
  end
end

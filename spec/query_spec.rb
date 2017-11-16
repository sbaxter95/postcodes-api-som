require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing query functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @query = postcodes.query
  end

  it 'should return a status of 200' do
    expect(@query.get_query('sw166rw')['status']).to eq(200)
  end

  it 'should return a hash' do
    expect(@query.get_query('sw166rw').class).to eq(Hash)
  end

  it 'should return a country' do
    expect(@query.get_query('sw166rw')['result'][0]['country']).not_to be_nil
  end

end

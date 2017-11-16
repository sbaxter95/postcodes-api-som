require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing searching by nearest postcpde functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @nearest = postcodes.nearest_postcode
  end

  it 'should return a status of 200' do
    expect(@nearest.get_nearest_postcode('sw166rw')['status']).to eq(200)
  end

  it 'should return a results array' do
    expect(@nearest.get_nearest_postcode('sw166rw')['result'].class).to eq(Array)
  end

  it 'should return multiple postcodes' do
    expect(@nearest.get_nearest_postcode('sw166rw')['result'].length).to be > 1
  end

  it 'should have a region' do
    expect(@nearest.get_nearest_postcode('sw166rw')['result'][0]['region']).not_to be_nil
  end

end

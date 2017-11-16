require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing single postcode functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @single = postcodes.single_postcode
  end

  it 'should return a hash' do
    expect(@single.get_single_postcode('sw166rw').class).to eq(Hash)
  end

  it 'should return a status of 200' do
    expect(@single.get_single_postcode('sw166rw')['status']).to eq(200)
  end

  it 'should return one postcode' do
    expect(@single.get_single_postcode('sw166rw').length).to eq(2)
  end

end

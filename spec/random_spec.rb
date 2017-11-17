require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing random postcode functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @random = postcodes.random
  end

  it 'should return a status of 200' do
    expect(@random.get_random_postcode['status']).to eq(200)
  end

  it 'should return a hash of results' do
    expect(@random.get_random_postcode['result'].class).to eq(Hash)
  end

  it 'should have an eastings' do
    expect(@random.get_random_postcode['result']['eastings']).not_to be_nil
  end

  it 'should have an northings' do
    expect(@random.get_random_postcode['result']['northings']).not_to be_nil
  end

end

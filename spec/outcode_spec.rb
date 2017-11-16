require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing searching by outcode functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @outcode = postcodes.outcode
  end

  it 'should return a response of 200' do
    expect(@outcode.search_outcode('sw16')['status']).to eq(200)
  end

  it 'should have an outcode' do
    expect(@outcode.search_outcode('sw16')['result']['outcode']).not_to be_nil
  end

end

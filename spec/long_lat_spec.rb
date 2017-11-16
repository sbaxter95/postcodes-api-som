require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing searching by longitude and latitude functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @longlat = postcodes.long_lat
  end

  it 'should return a status of 200' do
    expect(@longlat.long_lat('0.629834723775309', '51.7923246977375')['status']).to eq(200)
  end

  it 'should test that a longitude is returned' do
    expect(@longlat.long_lat('0.629834723775309', '51.7923246977375')['result'][0]['longitude']).not_to be_nil
  end

  it 'should test that a latitude is returned' do
    expect(@longlat.long_lat('0.629834723775309', '51.7923246977375')['result'][0]['latitude']).not_to be_nil
  end

end

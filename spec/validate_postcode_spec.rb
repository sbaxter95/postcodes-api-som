require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing validating postcode functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @validate = postcodes.validate
  end

  it 'should return a status of 200' do
    expect(@validate.validate_postcode('sw166rw')['status']).to eq(200)
  end

  it 'should return a hash' do
    expect(@validate.validate_postcode('sw166rw').class).to eq(Hash)
  end

  it 'should return a result' do
    expect(@validate.validate_postcode('sw166rw')['result']).not_to be_nil
  end

  it 'should return a result that is true' do
    expect(@validate.validate_postcode('sw166rw')['result']).to eq(true)
  end

end

require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing autocomplete functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @auto = postcodes.autocomplete
  end

  it 'should return a hash' do
    expect(@auto.autocomplete('sw16').class).to eq(Hash)
  end

  it 'should return a status of 200' do
    expect(@auto.autocomplete('sw16')['status']).to eq(200)
  end

  it 'should return a results array' do
    expect(@auto.autocomplete('sw16')['result'].class).to eq(Array)
  end

end

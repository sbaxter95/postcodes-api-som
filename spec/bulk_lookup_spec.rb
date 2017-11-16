require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing bulk lookup functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @bulk = postcodes.bulk_lookup
  end

  it 'should return a status of 200' do
    expect(@bulk.bulk_lookup_postcodes(["sw16 6rw", "ky15 7uu", "ct2 8df"])['status']).to eq(200)
  end

  it 'should return multiple postcodes' do
    expect(@bulk.bulk_lookup_postcodes(["sw16 6rw", "ky15 7uu", "ct2 8df"])['result'].length).to eq(3)
  end

  it 'should have an array of results' do
    expect(@bulk.bulk_lookup_postcodes(["sw16 6rw", "ky15 7uu", "ct2 8df"])['result'].class).to eq(Array)
  end

end

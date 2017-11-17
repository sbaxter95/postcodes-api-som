require 'spec_helper'
require_relative '../lib/postcode_services.rb'

describe 'testing terminated postcode functionality' do

  before(:all) do
    postcodes = Postcodes.new
    @terminated = postcodes.terminated_postcode
  end

  it 'should return a status of 200' do
    expect(@terminated.terminated_postcode('m200ab')['status']).to eq(200)
  end

  it 'should have a result hash' do
    expect(@terminated.terminated_postcode('m200ab')['result'].class).to eq(Hash)
  end

  it 'should have a postcode' do
    expect(@terminated.terminated_postcode('m200ab')['result']['postcode']).not_to be_nil
  end

  it 'should have a year terminated' do
    expect(@terminated.terminated_postcode('m200ab')['result']['year_terminated']).not_to be_nil
  end

  it 'should have a month terminated' do
    expect(@terminated.terminated_postcode('m200ab')['result']['month_terminated']).not_to be_nil
  end

end

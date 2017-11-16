require 'httparty'
require 'json'
require_relative 'services/single_postcode.rb'
require_relative 'services/bulk_lookup.rb'
require_relative 'services/nearest_postcode.rb'
require_relative 'services/outcode.rb'
require_relative 'services/query.rb'
require_relative 'services/random.rb'
require_relative 'services/terminated_postcode.rb'
require_relative 'services/validate.rb'
require_relative 'services/long_lat.rb'
require_relative 'services/autocomplete.rb'

class Postcodes
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def single_postcode
    SinglePostcode.new
  end

  def autocomplete
    Autocomplete.new
  end

  def bulk_lookup
    BulkLookup.new
  end

  def long_lat
    LongLat.new
  end

  def nearest_postcode
    NearestPost.new
  end

  def outcode
    Outcode.new
  end

  def query
    Query.new
  end

  def random
    Random.new
  end

  def terminated_postcode
    TerminatedPostcode.new
  end

  def validate
    Validate.new
  end

end

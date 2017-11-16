require 'httparty'
require 'json'

class Random
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_random_postcode
    JSON.parse(self.class.get("/random/postcodes").body)
  end

end

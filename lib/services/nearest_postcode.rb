require 'httparty'
require 'json'

class NearestPost
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_nearest_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}/nearest").body)
  end

end

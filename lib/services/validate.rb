require 'httparty'
require 'json'

class Validate
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def validate_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}/validate").body)
  end

end

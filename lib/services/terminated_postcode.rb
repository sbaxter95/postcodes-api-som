require 'httparty'
require 'json'

class TerminatedPostcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def terminated_postcode(postcode)
    JSON.parse(self.class.get("/terminated_postcodes/#{postcode}").body)
  end

end

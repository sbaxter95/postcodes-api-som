require 'httparty'
require 'json'

class Autocomplete
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def autocomplete(partial_postcode)
    JSON.parse(self.class.get("/postcodes/#{partial_postcode}/autocomplete").body)
  end

end

require 'httparty'
require 'json'

class Outcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def search_outcode(outcode)
    JSON.parse(self.class.get("/outcodes/#{outcode}").body)
  end

end

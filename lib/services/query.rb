require 'httparty'
require 'json'

class Query
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_query(postcode)
    JSON.parse(self.class.get("/postcodes?q=#{postcode}").body)
  end

end

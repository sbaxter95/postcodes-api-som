require 'httparty'
require 'json'

class LongLat
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def long_lat(longitude, latitude)
    JSON.parse(self.class.get("/postcodes?lon=#{longitude}&lat=#{latitude}").body)
  end

end

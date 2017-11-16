require 'httparty'
require 'json'

class BulkLookup
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def bulk_lookup_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array}).body)
  end

end

module Songkickr
  # {
  #   "id":24426,
  #   "displayName":"London",
  #   "uri":"http://www.songkick.com/metro-areas/24426-uk-london",
  #   "country": {"displayName":"UK"}
  # }
  class City
    attr_accessor :display_name, :uri, :id, :state, :country, :lat, :lng

    def initialize(city_hash)
      @display_name = city_hash["displayName"]
      @id           = city_hash["id"]
      @uri          = city_hash["uri"]
      @country      = city_hash["country"]["displayName"] if city_hash.include?("country") && city_hash["country"].include?("displayName")
    end
  end
end

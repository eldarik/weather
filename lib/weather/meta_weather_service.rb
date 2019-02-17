class Weather::MetaWeatherService < Weather::Service
  BASE_URL = 'https://www.metaweather.com'

  def search_locations(query)
    url = URI.parse("#{BASE_URL}/api/location/search/?query=#{query}")
    response = http_client.get(url)
    JSON.parse(response)
  end

  def get_data_by_location(location)
    locations = search_locations(location)
    get_data_by_location_id(locations.first['woeid'])
  end

  def get_data_by_location_id(location_id)
    url = URI.parse("#{BASE_URL}/api/location/#{location_id}")
    response = http_client.get(url)
    JSON.parse(response)
  end
end

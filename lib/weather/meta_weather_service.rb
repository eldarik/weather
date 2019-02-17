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
    data = get_data(url)
    format_result(data)
  end

  def format_result(data)
    if data.nil?
      return {
        error: 'Error in MetaWeather api'
      }
    end
    weather = data["consolidated_weather"]&.first
    {
      location: data["title"],
      temperature: weather["the_temp"],
      air_pressure: weather["air_pressure"],
      wind_speed: weather["wind_speed"],
      humidity: weather["humidity"],
    }
  end
end

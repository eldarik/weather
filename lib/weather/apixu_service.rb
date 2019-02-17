class Weather::ApixuService < Weather::Service
  BASE_URL = 'https://api.apixu.com'
  attr :api_key

  def get_data_by_location(location)
    url = URI.parse("#{BASE_URL}/v1/current.json?key=#{api_key}&q=#{location}")
    data = get_data(url)
    format_result(data)
  end

  def format_result(data)
    if data.nil?
      return {
        error: 'Error in Apixu api'
      }
    end
    {
      location: data.dig("location", "name"),
      temperature: data.dig("current", "temp_c"),
      air_pressure: data.dig("current", "pressure_mb"),
      wind_speed: data.dig("current", "wind_kph"),
      humidity: data.dig("current", "humidity"),
    }
  end
end

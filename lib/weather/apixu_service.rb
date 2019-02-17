class Weather::ApixuService < Weather::Service
  BASE_URL = 'https://api.apixu.com'
  attr :api_key

  def initialize(api_key = ENV['APIXU_API_KEY'], http_client = Weather::HttpClient)
    @api_key = api_key
    @http_client = http_client
  end

  def get_data_by_location(location)
    url = URI.parse("#{BASE_URL}/v1/current.json?key=#{api_key}&q=#{location}")
    if api_key.nil?
      return {
        error: 'Please provider api key in ENV or in initilize'
      }
    end
    response = http_client.get(url)
    format_result(JSON.parse(response))
  end

  def format_result(data)
    {
      location: data.dig("location", "name"),
      temperature: data.dig("current", "temp_c"),
      air_pressure: data.dig("current", "pressure_mb"),
      wind_speed: data.dig("current", "wind_kph"),
      humidity: data.dig("current", "humidity"),
    }
  end
end

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
    JSON.parse(response)
  end
end

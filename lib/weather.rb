require "weather/version"
require "weather/http_client"
require "weather/service"
require "weather/meta_weather_service"
require "weather/apixu_service"
require "weather/service_factory"

require "weather/cli"

module Weather
  class Error < StandardError; end
  class Forecast
    def initialize(service_provider)
      @service_provider = service_provider
    end

    def get_data_by_location(location)
      @service_provider.get_data_by_location(location)
    end
  end
end

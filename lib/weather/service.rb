require 'json'

module Weather
  class Service
    attr :http_client

    def initialize(http_client = Weather::HttpClient)
      @http_client = http_client
    end

    def get_data_by_location(location)
      raise NotImplementedError
    end
  end
end

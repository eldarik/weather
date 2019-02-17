require 'json'

module Weather
  class Service
    attr :http_client

    def initialize(args = {})
      @api_key = args[:api_key]
      @http_client = args[:http_client] || Weather::HttpClient
    end

    def get_data_by_location(location)
      raise NotImplementedError
    end

    def get_data(url)
      response = http_client.get(url)
      JSON.parse(response)
    rescue OpenURI, JSON::ParserError => e
      nil
    end
  end
end

require 'weather'

module Weather::Cli
  SERVICES = %w[apixu metaweather]

  class Cli
    attr :service_provider

    def initialize(args = {})
      service_name = args[:service_name]
      api_key = args[:api_key]
      @service_provider = ::Weather::ServiceFactory.build(service_name, api_key)
    end

    def start(location)
      if @service_provider.nil?
        puts "Please choose service from list: #{SERVICES.join(', ')}"
        return
      end
      puts JSON.pretty_generate service_provider.get_data_by_location(location)
    end
  end

  def self.available_services
    SERVICES
  end
end

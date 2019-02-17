require 'weather'

module Weather::Cli
  SERVICES = %w[apixu metaweather]

  class Cli
    attr :service
    def initialize(service)
      @service = ::Weather::ServiceFactory.get(service)
    end

    def start(location)
      if service.nil?
        puts "Please choose service from list: #{SERVICES.join(', ')}"
        return
      end
      puts JSON.pretty_generate service.get_data_by_location(location)
    end
  end

  def self.available_services
    SERVICES
  end
end

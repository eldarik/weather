require 'weather'

module Weather::Cli
  SERVICES = %w[apixu metaweather]

  class Cli
    attr :service_class

    def initialize(service)
      @service_class =
        case service
        when 'apixu'
          ::Weather::ApixuService
        when 'metaweather'
          ::Weather::MetaWeatherService
        else
          nil
        end
    end

    def start(location)
      service_class.new&.get_data_by_location(location)
    end
  end

  def self.available_services
    SERVICES
  end
end

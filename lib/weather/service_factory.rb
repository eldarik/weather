module Weather::ServiceFactory
  def self.get(service_name)
    services[service_name]
  end

  def self.services
    {
      'apixu'       => ::Weather::ApixuService.new,
      'metaweather' => ::Weather::MetaWeatherService.new
    }
  end
end

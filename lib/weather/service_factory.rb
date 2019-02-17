module Weather::ServiceFactory
  def self.build(service_name, api_key)
    services[service_name].new(api_key: api_key)
  end

  def self.services
    {
      'apixu'       => ::Weather::ApixuService,
      'metaweather' => ::Weather::MetaWeatherService
    }
  end
end

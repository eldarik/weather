class TestHttpClient::Apixu
  def self.get(url)
    case url.to_s
    when /v1\/current.json?key=\.*&q=\w+/
      successfull_response
    else
      response_with_error
    end
  end

  def self.successfull_response
    {
      "location": {
        "name": "Moscow",
        "region": "Moscow City",
        "country": "Russia",
        "lat": 55.75,
        "lon": 37.62,
        "tz_id": "Europe/Moscow",
        "localtime_epoch": 1550382154,
        "localtime": "2019-02-17 8:42"
      },
      "current": {
        "last_updated_epoch": 1550381413,
        "last_updated": "2019-02-17 08:30",
        "temp_c": 1,
        "temp_f": 33.8,
        "is_day": 1,
        "condition": {
          "text": "Partly cloudy",
          "icon": "//cdn.apixu.com/weather/64x64/day/116.png",
          "code": 1003
        },
        "wind_mph": 16.1,
        "wind_kph": 25.9,
        "wind_degree": 250,
        "wind_dir": "WSW",
        "pressure_mb": 998,
        "pressure_in": 29.9,
        "precip_mm": 0,
        "precip_in": 0,
        "humidity": 86,
        "cloud": 50,
        "feelslike_c": -4.7,
        "feelslike_f": 23.5,
        "vis_km": 10,
        "vis_miles": 6,
        "uv": 2
      }
    }.to_json
  end

  def self.response_with_error
    {
      "error": {
        "code": 1006,
        "message": "No matching location found."
      }
    }.to_json
  end
end

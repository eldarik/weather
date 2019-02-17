class TestHttpClient::MetaWeather
  def self.get(url)
    require 'pry'; binding.pry
    case url.to_s
    when /api\/location\/search/
      location_response
    when /api\/location\/\d+/
      weather_response
    end
  end

  def self.location_response
    [
      {
        "title": "Moscow",
        "location_type": "City",
        "woeid": 2122265,
        "latt_long": "55.756950,37.614971"
      }
    ].to_json
  end

  def self.weather_response
    {
      "consolidated_weather": [
        {
          "id": 4936541755408384,
          "weather_state_name": "Light Rain",
          "weather_state_abbr": "lr",
          "wind_direction_compass": "NW",
          "created": "2019-02-17T00:44:33.272223Z",
          "applicable_date": "2019-02-17",
          "min_temp": -1.9666666666666668,
          "max_temp": 1.7,
          "the_temp": 2.4050000000000002,
          "wind_speed": 10.440063166706434,
          "wind_direction": 306.065106785456,
          "air_pressure": 1003.595,
          "humidity": 80,
          "visibility": 12.892209496540204,
          "predictability": 75
        },
        {
          "id": 5993052170616832,
          "weather_state_name": "Light Rain",
          "weather_state_abbr": "lr",
          "wind_direction_compass": "NNW",
          "created": "2019-02-17T00:44:36.391849Z",
          "applicable_date": "2019-02-18",
          "min_temp": -8.98,
          "max_temp": -2.19,
          "the_temp": -0.7250000000000001,
          "wind_speed": 9.754110618832021,
          "wind_direction": 327.3500463913107,
          "air_pressure": 1002.925,
          "humidity": 78,
          "visibility": 14.612475642249265,
          "predictability": 75
        },
        {
          "id": 5165907403866112,
          "weather_state_name": "Light Rain",
          "weather_state_abbr": "lr",
          "wind_direction_compass": "WSW",
          "created": "2019-02-17T00:44:39.115272Z",
          "applicable_date": "2019-02-19",
          "min_temp": -9.086666666666668,
          "max_temp": 0.13999999999999999,
          "the_temp": -4.4,
          "wind_speed": 7.952809611645987,
          "wind_direction": 244.9762799682366,
          "air_pressure": 1013.995,
          "humidity": 78,
          "visibility": 15.297537381690924,
          "predictability": 75
        },
        {
          "id": 5219990940680192,
          "weather_state_name": "Thunder",
          "weather_state_abbr": "t",
          "wind_direction_compass": "WSW",
          "created": "2019-02-17T00:44:42.105442Z",
          "applicable_date": "2019-02-20",
          "min_temp": -0.8366666666666666,
          "max_temp": 2.4266666666666667,
          "the_temp": 0.47000000000000003,
          "wind_speed": 9.070359447182454,
          "wind_direction": 238.87105182579063,
          "air_pressure": 1006.0550000000001,
          "humidity": 82,
          "visibility": 14.828402131551737,
          "predictability": 80
        },
        {
          "id": 4889600111673344,
          "weather_state_name": "Sleet",
          "weather_state_abbr": "sl",
          "wind_direction_compass": "WNW",
          "created": "2019-02-17T00:44:45.165163Z",
          "applicable_date": "2019-02-21",
          "min_temp": -6.28,
          "max_temp": 1.3466666666666667,
          "the_temp": 1.75,
          "wind_speed": 7.442333848938201,
          "wind_direction": 286.17166461042484,
          "air_pressure": 998.64,
          "humidity": 86,
          "visibility": 7.115942893501948,
          "predictability": 85
        },
        {
          "id": 5707224445878272,
          "weather_state_name": "Heavy Rain",
          "weather_state_abbr": "hr",
          "wind_direction_compass": "N",
          "created": "2019-02-17T00:44:48.215494Z",
          "applicable_date": "2019-02-22",
          "min_temp": -11.293333333333335,
          "max_temp": -6.126666666666666,
          "the_temp": -10.45,
          "wind_speed": 12.111422625202152,
          "wind_direction": 353.6290312729494,
          "air_pressure": 1009.79,
          "humidity": 74,
          "visibility": 6.207498210450966,
          "predictability": 77
        }
      ],
      "time": "2019-02-17T05:54:35.161589+03:00",
      "sun_rise": "2019-02-17T07:50:34.671863+03:00",
      "sun_set": "2019-02-17T17:37:26.274421+03:00",
      "timezone_name": "LMT",
      "parent": {
        "title": "Russia",
        "location_type": "Country",
        "woeid": 23424936,
        "latt_long": "59.453751,108.830719"
      },
      "title": "Moscow",
      "location_type": "City",
      "woeid": 2122265,
      "latt_long": "55.756950,37.614971",
      "timezone": "Europe/Moscow"
    }.to_json
  end
end

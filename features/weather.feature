Feature: Weather feture
  Scenario: get weather data with service by location
    When I run `weather --service openweathermap london`
    Then the output should contain "Weather"
    Then the output should contain "location"
    Then the output should contain "degrees"

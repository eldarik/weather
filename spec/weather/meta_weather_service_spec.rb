describe Weather::MetaWeatherService do
  let!(:http_client) { TestHttpClient::MetaWeather }
  let!(:subject) { described_class.new(http_client: http_client) }
  describe 'instance methods' do
    describe '#search_locations' do
      let!(:query) { 'foo' }
      let!(:expected) do
          [
            {
              "title" => "Moscow",
              "location_type" => "City",
              "woeid" => 2122265,
              "latt_long" => "55.756950,37.614971"
            }
          ]
      end

      it_is_asserted_by do
        subject.search_locations(query) == expected
      end
    end

    describe '#get_data_by_location_id' do
      let!(:location_id) { '123123' }

      it_is_asserted_by do
        subject.get_data_by_location_id(location_id) != nil
      end
    end

    describe '#get_data_by_location' do
      let!(:location) { 'Moscow' }

      it_is_asserted_by do
        subject.get_data_by_location(location) != nil
      end
    end
  end
end

describe Weather::ApixuService do
  let!(:http_client) { TestHttpClient::Apixu }
  let!(:api_key) { 'test_key' }

  describe 'class methods' do
    describe '.new' do
      context 'no http_client passed' do
        it_is_asserted_by do
          described_class.new(api_key).http_client == Weather::HttpClient
        end
      end

      context 'custom class passed' do
        let!(:http_client) { TestHttpClient }
        it_is_asserted_by do
          described_class.new(api_key, http_client).http_client == http_client
        end
      end
    end
  end

  describe 'instance methods' do
    let!(:subject) { described_class.new(api_key, http_client) }

    describe '#get_data_by_location' do
      let!(:location) { 'location' }

      it_is_asserted_by do
        subject.get_data_by_location(location) != nil
      end
    end
  end
end

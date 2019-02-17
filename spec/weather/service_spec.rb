describe Weather::Service do
  describe 'class methods' do
    describe '.new' do
      context 'no argument passed' do
        it_is_asserted_by do
          described_class.new.http_client == Weather::HttpClient
        end
      end

      context 'custom class passed' do
        let!(:http_client) { TestHttpClient }
        it_is_asserted_by do
          described_class.new(http_client).http_client == http_client
        end
      end
    end

    describe 'instance methods' do
      describe '#get_data_by_location' do
        it do
          expect { described_class.new.get_data_by_location('foo') }.to raise_error(NotImplementedError)
        end
      end
    end
  end
end

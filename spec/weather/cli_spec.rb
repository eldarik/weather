describe Weather::Cli do
  describe 'module methods' do
    describe '.available_services' do
      it_is_asserted_by { described_class.available_services != nil }
    end
  end

  describe Weather::Cli::Cli do
    describe 'class methods' do
      describe '.new' do
        context 'service from avaiable' do
          let!(:service) { Weather::Cli.available_services.sample }
          it_is_asserted_by { Weather::Cli::Cli.new(service).service_class != nil }
        end
      end
    end
  end
end

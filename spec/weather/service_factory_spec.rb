describe Weather::ServiceFactory do
  describe 'module methods' do
    describe '.get' do
      it_is_asserted_by { described_class.get('apixu').class == Weather::ApixuService }
    end
  end
end

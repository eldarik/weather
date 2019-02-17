describe Weather::ServiceFactory do
  describe 'module methods' do
    describe '.buidl' do
      it_is_asserted_by { described_class.build('apixu', nil).class == Weather::ApixuService }
    end
  end
end

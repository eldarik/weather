RSpec.describe Weather do
  it "has a version number" do
    is_asserted_by { Weather::VERSION != nil }
  end

  describe 'class methods' do
    describe 'get_data_by_location' do
    end
  end
end

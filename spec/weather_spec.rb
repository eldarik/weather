describe Weather do
  it "has a version number" do
    is_asserted_by { Weather::VERSION != nil }
  end
end

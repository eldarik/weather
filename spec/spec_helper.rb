require "bundler/setup"
require "weather"
require "fixtures/test_http_client"
require "fixtures/test_http_client/meta_weather"
require "fixtures/test_http_client/apixu"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expose_dsl_globally = true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

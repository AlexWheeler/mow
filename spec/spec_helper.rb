require "bundler/setup"
require "mow"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def fixture_file_path(file_name)
    File.join(File.dirname(__FILE__), "file_fixtures", file_name)
  end
end

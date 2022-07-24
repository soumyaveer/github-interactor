# frozen_string_literal: true

require "github/interactor"
require 'vcr'
require 'webmock/rspec'
require './lib/init.rb'

include WebMock

VCR.configure do |config|
  config.configure_rspec_metadata!
  config.cassette_library_dir = "spec/support/vcr_cassettes"
  config.hook_into :webmock
  vcr_mode = :once
  # config.ignore_localhost = true
  config.default_cassette_options = {
  record: vcr_mode,
  match_requests_on: %i[method uri body]
}
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

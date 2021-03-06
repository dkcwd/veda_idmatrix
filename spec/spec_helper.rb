require 'bundler/setup'
require 'veda_idmatrix'
require 'shoulda/matchers'
Bundler.setup

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => ':memory:'
  )
require 'schema'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  # Run specs in random order to surface order dependencies. 
  config.order = 'random'
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

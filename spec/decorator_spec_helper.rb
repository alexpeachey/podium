require 'rubygems'

# require 'simplecov'
# require 'simplecov-rcov'
# class SimpleCov::Formatter::MergedFormatter
#   def format(result)
#      SimpleCov::Formatter::HTMLFormatter.new.format(result)
#      SimpleCov::Formatter::RcovFormatter.new.format(result)
#   end
# end
# SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
# SimpleCov.start 'rails'

require 'draper'
Draper::ViewContext.test_strategy :fast

DECORATORS_ROOT = File.expand_path('../../app/decorators', __FILE__)

require 'rspec/autorun'

Dir["support_decorators/**/*.rb"].each {|f| require f}
RSpec.configure do |config|
  config.mock_with :rspec
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
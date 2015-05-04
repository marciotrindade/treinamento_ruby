ENV['RUBY_ENV'] ||= 'sysint'

require File.expand_path('../../app', __FILE__)

RSpec.configure do |c|
  c.mock_with :rspec
end

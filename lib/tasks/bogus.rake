require 'bundler/setup'
require 'rspec/core/rake_task'

namespace :bogus do
  desc 'Run bogus specs'
  RSpec::Core::RakeTask.new(:'spec') do |t|
    t.pattern = 'spec/bogus/**/*_spec.rb'
  end
end

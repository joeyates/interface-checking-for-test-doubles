require 'bundler/setup'
require 'rspec/core/rake_task'

desc 'Run all specs'
RSpec::Core::RakeTask.new(:'spec') do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

namespace :bogus do
  desc 'Run bogus specs'
  RSpec::Core::RakeTask.new(:'spec') do |t|
    t.pattern = 'spec/bogus/**/*_spec.rb'
  end
end

namespace :quacky do
  desc 'Run quacky specs'
  RSpec::Core::RakeTask.new(:'spec') do |t|
    t.pattern = 'spec/quacky/**/*_spec.rb'
  end
end

task default: [:spec]

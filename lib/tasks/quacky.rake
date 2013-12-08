require 'bundler/setup'
require 'rspec/core/rake_task'

namespace :quacky do
  desc 'Run quacky specs'
  RSpec::Core::RakeTask.new(:'spec') do |t|
    t.pattern = 'spec/quacky/**/*_spec.rb'
  end
end

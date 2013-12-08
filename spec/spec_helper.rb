require 'rspec'

lib_path = File.expand_path(File.join('..', 'lib'), File.dirname(__FILE__))
$: << lib_path

require 'gear'
require 'wheel'

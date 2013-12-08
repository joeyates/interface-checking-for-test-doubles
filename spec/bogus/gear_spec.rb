require 'bogus_spec_helper'

describe Gear, 'with Wheel::Version1 - bogus' do
  fake(:wheel, diameter: 29) { Wheel::Version1 }

  subject { Gear::Version1.new(52, 13, wheel) }

  its(:gear_inches) { should be_within(0.01).of(116) }
end

describe Gear, 'with Wheel::Version2 - bogus' do
  fake(:wheel, circumference: 91.1) { Wheel::Version2 }

  subject { Gear::Version2.new(52, 13, wheel) }

  its(:gear_inches) { should be_within(0.01).of(116) }
end

require 'rspec_fire_spec_helper'

describe Gear, 'with Wheel::Version1 - rspec-fire' do
  let(:wheel) { instance_double('Wheel::Version1') }

  subject { Gear::Version1.new(52, 13, wheel) }

  before do
    #allow(wheel).to receive(:diameter).with().and_return(29) # does not raise errors when interface changes
    wheel.should_receive(:diameter).and_return(29)
  end

  its(:gear_inches) { should be_within(0.01).of(116) }
end

describe Gear, 'with Wheel::Version2 - rspec-fire' do
  let(:wheel) { instance_double('Wheel::Version2') }

  subject { Gear::Version2.new(52, 13, wheel) }

  before do
    wheel.should_receive(:circumference).and_return(91.1)
  end

  its(:gear_inches) { should be_within(0.01).of(116) }
end

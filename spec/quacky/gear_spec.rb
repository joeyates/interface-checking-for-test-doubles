require 'quacky_spec_helper'

describe Gear, 'with Wheel::Version1 - quacky' do
  let(:wheel) { Quacky.double(:wheel, Diameterable) }

  before do
    wheel.should_receive(:diameter).with().and_return(29.0)
  end

  subject { Gear::Version1.new(52, 13, wheel) }

  its(:gear_inches) { should be_within(0.01).of(116) }
end

describe Gear, 'with Wheel::Version2 - quacky' do
  let(:wheel) { Quacky.double(:wheel, Circumferanceable) }

  before do
    wheel.should_receive(:circumference).with().and_return(91.1)
  end

  subject { Gear::Version2.new(52, 13, wheel) }

  its(:gear_inches) { should be_within(0.01).of(116) }
end

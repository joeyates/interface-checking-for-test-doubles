require 'quacky_spec_helper'

describe Wheel::Version1, ' - quacky' do
  subject { described_class.new(26, 1.5) }

  it { should quack_like(Diameterable) }

  its(:diameter) { should be_within(0.1).of(29) }
end

describe Wheel::Version2, ' - quacky' do
  subject { described_class.new(26, 1.5) }

  it { should quack_like(Circumferanceable) }

  its(:circumference) { should be_within(0.1).of(91.1) }
end

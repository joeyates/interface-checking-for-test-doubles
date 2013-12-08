# This class is based on code by Sandi Metz

module Diameterable
  def diameter; end
end

module Circumferanceable
  def circumference; end
end

module Wheel
  class Version1
    attr_reader :rim, :tire

    def initialize(rim, tire)
      @rim = rim
      @tire = tire
    end

    def diameter
      rim + tire * 2
    end
  end

  class Version2
    attr_reader :rim, :tire

    def initialize(rim, tire)
      @rim = rim
      @tire = tire
    end

    def circumference
      diameter * Math::PI
    end

    private

    def diameter
      rim + tire * 2
    end
  end
end

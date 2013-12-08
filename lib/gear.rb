# This class is based on code by Sandi Metz
module Gear
  class Version1
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end

    def gear_inches
      ratio * wheel.diameter
    end

    private

    def ratio
      chainring / cog
    end
  end

  class Version2
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end

    def gear_inches
      ratio * wheel.circumference / Math::PI
    end

    private

    def ratio
      chainring / cog
    end
  end
end

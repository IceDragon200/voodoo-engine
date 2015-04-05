module Voodoo
  class Clock
    def initialize
      @time = Time.now
    end

    def reset
      d = delta
      @time = Time.now
      d
    end

    def delta
      Time.now - @time
    end
  end
end

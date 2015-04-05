require 'voodoo/engine/screen'
require 'voodoo/engine/input'
require 'voodoo/clock'

module Voodoo
  class Engine
    class EngineQuit < Exception
    end

    attr_accessor :input
    attr_accessor :screen

    def initialize
      @input = Input.new
      @screen = Screen.new
      @clock = Clock.new
    end

    def quit
      raise EngineQuit
    end

    def on_signal(signal)
      quit
    end

    def run
      @clock.reset
      for i in %w[HUP INT QUIT TERM]
        if trap(i, "SIG_IGN") != 0 then  # 0 for SIG_IGN
          trap(i) { |sig| on_signal(sig) }
        end
      end

      loop do
        base_delta = 1.0 / @screen.frame_rate
        delta = @clock.reset
        @input.update delta
        @screen.clear
        yield self, delta
        @screen.display
        @screen.wait([delta - base_delta, 0].max)
      end
    rescue EngineQuit
    end

    def destroy
      @screen.destroy
    end
  end
end

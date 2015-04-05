require 'voodoo/drawing_helper'

module Voodoo
  class Screen
    class << self
      attr_accessor :current
    end
    include DrawingHelper

    def initialize
      self.class.current = self
      init
    end

    def init
      Curses.init_screen
      Curses.start_color
      Curses.nonl
      Curses.noecho
      Curses.cbreak
      Curses.timeout = 0
      Curses.curs_set(0)
      init_colors
      @frame_rate = 60.0
    end

    def frame_rate
      @frame_rate
    end

    def frame_rate=(frame_rate)
      @frame_rate = frame_rate
    end

    def init_colors
      Curses.init_pair(0,  Curses::COLOR_WHITE,   Curses::COLOR_BLACK)
      Curses.init_pair(1,  Curses::COLOR_RED,     Curses::COLOR_BLACK)
      Curses.init_pair(2,  Curses::COLOR_GREEN,   Curses::COLOR_BLACK)
      Curses.init_pair(3,  Curses::COLOR_BLUE,    Curses::COLOR_BLACK)
      Curses.init_pair(4,  Curses::COLOR_YELLOW,  Curses::COLOR_BLACK)
      Curses.init_pair(5,  Curses::COLOR_MAGENTA, Curses::COLOR_BLACK)
      Curses.init_pair(6,  Curses::COLOR_CYAN,    Curses::COLOR_BLACK)
      Curses.init_pair(7,  Curses::COLOR_BLACK,   Curses::COLOR_BLACK)

      Curses.init_pair(8,  Curses::COLOR_WHITE,   Curses::COLOR_WHITE)
      Curses.init_pair(9,  Curses::COLOR_RED,     Curses::COLOR_WHITE)
      Curses.init_pair(10, Curses::COLOR_GREEN,   Curses::COLOR_WHITE)
      Curses.init_pair(11, Curses::COLOR_BLUE,    Curses::COLOR_WHITE)
      Curses.init_pair(12, Curses::COLOR_YELLOW,  Curses::COLOR_WHITE)
      Curses.init_pair(13, Curses::COLOR_MAGENTA, Curses::COLOR_WHITE)
      Curses.init_pair(14, Curses::COLOR_CYAN,    Curses::COLOR_WHITE)
      Curses.init_pair(15, Curses::COLOR_BLACK,   Curses::COLOR_WHITE)

      Curses.attrset(Curses.color_pair(0)|Curses::A_NORMAL)
    end

    def destroy
      Curses.close_screen
    end

    def clear
      Curses.clear
    end

    def display
      Curses.refresh
    end

    def width
      Curses.cols
    end

    def height
      Curses.lines
    end

    def resize(width, height)
      Curses.resizeterm(height, width)
    end

    def wait(offset = 0.0)
      sleep([1.0 / @frame_rate - offset, 0].max)
    end
  end
end

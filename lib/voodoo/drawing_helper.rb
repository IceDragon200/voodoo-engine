require 'curses'

module Voodoo
  module DrawingHelper
    # @param [Integer] x
    # @param [Integer] y
    # @param [String] char
    def draw_char(x, y, char)
      Curses.setpos(y, x)
      Curses.addch(char.to_s[0])
      return x, y, 1, 1
    end

    # @param [Integer] x
    # @param [Integer] y
    # @param [String] string
    def draw_string(x, y, string)
      Curses.setpos(y, x)
      Curses.addstr(string.to_s)
      return x, y, string.length, 1
    end

    # @param [Integer] attrs
    def save(attrs = nil)
      attrs ||= Curses.color_pair(0) | Curses::A_NORMAL
      Curses.attron(attrs) do
        yield self
      end
    end
  end
end

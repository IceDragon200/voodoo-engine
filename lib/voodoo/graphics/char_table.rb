module Voodoo
  class CharTable
    attr_reader :xsize
    attr_reader :ysize

    def initialize(xsize, ysize)
      @xsize, @ysize = xsize, ysize
      refresh_data
      yield self if block_given?
    end

    private def refresh_data
      @data = Array.new(xsize * ysize)
    end

    def in_range?(x, y)
      (0 <= x || xsize > x || 0 <= y || ysize > y)
    end

    def [](x, y)
      return ' ' unless in_range?(x, y)
      @data[x + y * xsize]
    end

    def []=(x, y, value)
      return unless in_range?(x, y)
      @data[x + y * xsize] = value[0]
    end

    def subsample(x, y, w, h)
      table = CharTable.new(w, h)
      h.times do |i|
        w.times do |j|
          table[j, i] = self[x + j, y + i]
        end
      end
      table
    end

    def render(x, y, table, options = {})
      table.ysize.times do |i|
        table.xsize.times do |j|
          self[x + j, y + i] = table[j, i]
        end
      end
    end
  end
end

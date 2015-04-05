require 'voodoo/graphics/render_target'

module Voodoo
  class CharTilemap < Moon::RenderContext
    # @return [Moon::Table]
    attr_accessor :data
    # @return [Moon::Table]
    attr_accessor :color_data
    # @return [Hash<Integer, String>]
    attr_accessor :tileset

    #
    def init
      super
      @data = nil
      @color_data = nil
      @tileset = {}
      @default = ' '
      @baked_lines = nil
    end

    def data=(data)
      @data = data
      @width = (@data && @data.xsize) || 0
      @height = (@data && @data.ysize) || 0
    end

    # baking does not work with color_data, just an fyi
    def bake
      return unbake unless @data
      @baked_lines = []
      @data.ysize.times do |i|
        line = ''
        @data.xsize.times do |j|
          line << @tileset.fetch(@data[j, i], @default)
        end
        @baked_lines << line
      end
    end

    def unbake
      @baked_lines = nil
    end

    #
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] _
    # @param [Hash<Symbol, Object>] options
    def render_live(x, y, _, options)
      return unless @data
      @data.ysize.times do |i|
        @data.xsize.times do |j|
          tile_id = @data[j, i]
          if tile_id > -1
            color = (@color_data && @color_data[j, i]) || 0
            screen.save(Curses.color_pair(color)|Curses::A_NORMAL) do
              screen.draw_char(x + j, y + i, @tileset.fetch(tile_id, @default))
            end
          end
        end
      end
    end

    #
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] _
    # @param [Hash<Symbol, Object>] options
    def render_baked(x, y, _, options)
      @baked_lines.each_with_index do |line, i|
        screen.draw_string(x, y + i, line)
      end
    end

    #
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] _
    # @param [Hash<Symbol, Object>] options
    def render_content(x, y, _, options)
      if @baked_lines
        render_baked(x, y, _, options)
      else
        render_live(x, y, _, options)
      end
    end
  end
end

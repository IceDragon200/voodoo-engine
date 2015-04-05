module Voodoo
  module RenderTarget
    attr_writer :screen

    def screen
      Voodoo::Screen.current
    end
  end
end

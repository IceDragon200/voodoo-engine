module Voodoo
  class Input
    INPUT_MAP = {
      Curses::KEY_A1 => :A1,
      Curses::KEY_A3 => :A3,
      Curses::KEY_B2 => :B2,
      Curses::KEY_BACKSPACE => :BACKSPACE,
      Curses::KEY_BEG => :BEG,
      Curses::KEY_BREAK => :BREAK,
      Curses::KEY_BTAB => :BTAB,
      Curses::KEY_C1 => :C1,
      Curses::KEY_C3 => :C3,
      Curses::KEY_CANCEL => :CANCEL,
      Curses::KEY_CATAB => :CATAB,
      Curses::KEY_CLEAR => :CLEAR,
      Curses::KEY_CLOSE => :CLOSE,
      Curses::KEY_COMMAND => :COMMAND,
      Curses::KEY_COPY => :COPY,
      Curses::KEY_CREATE => :CREATE,
      Curses::KEY_CTAB => :CTAB,
      Curses::KEY_CTRL_A => :CTRL_A,
      Curses::KEY_CTRL_B => :CTRL_B,
      Curses::KEY_CTRL_C => :CTRL_C,
      Curses::KEY_CTRL_D => :CTRL_D,
      Curses::KEY_CTRL_E => :CTRL_E,
      Curses::KEY_CTRL_F => :CTRL_F,
      Curses::KEY_CTRL_G => :CTRL_G,
      Curses::KEY_CTRL_H => :CTRL_H,
      Curses::KEY_CTRL_I => :CTRL_I,
      Curses::KEY_CTRL_J => :CTRL_J,
      Curses::KEY_CTRL_K => :CTRL_K,
      Curses::KEY_CTRL_L => :CTRL_L,
      Curses::KEY_CTRL_M => :CTRL_M,
      Curses::KEY_CTRL_N => :CTRL_N,
      Curses::KEY_CTRL_O => :CTRL_O,
      Curses::KEY_CTRL_P => :CTRL_P,
      Curses::KEY_CTRL_Q => :CTRL_Q,
      Curses::KEY_CTRL_R => :CTRL_R,
      Curses::KEY_CTRL_S => :CTRL_S,
      Curses::KEY_CTRL_T => :CTRL_T,
      Curses::KEY_CTRL_U => :CTRL_U,
      Curses::KEY_CTRL_V => :CTRL_V,
      Curses::KEY_CTRL_W => :CTRL_W,
      Curses::KEY_CTRL_X => :CTRL_X,
      Curses::KEY_CTRL_Y => :CTRL_Y,
      Curses::KEY_CTRL_Z => :CTRL_Z,
      Curses::KEY_DC => :DC,
      Curses::KEY_DL => :DL,
      Curses::KEY_DOWN => :DOWN,
      Curses::KEY_EIC => :EIC,
      Curses::KEY_END => :END,
      Curses::KEY_ENTER => :ENTER,
      Curses::KEY_EOL => :EOL,
      Curses::KEY_EOS => :EOS,
      Curses::KEY_EXIT => :EXIT,
      Curses::KEY_F0 => :F0,
      Curses::KEY_F1 => :F1,
      Curses::KEY_F10 => :F10,
      Curses::KEY_F11 => :F11,
      Curses::KEY_F12 => :F12,
      Curses::KEY_F13 => :F13,
      Curses::KEY_F14 => :F14,
      Curses::KEY_F15 => :F15,
      Curses::KEY_F16 => :F16,
      Curses::KEY_F17 => :F17,
      Curses::KEY_F18 => :F18,
      Curses::KEY_F19 => :F19,
      Curses::KEY_F2 => :F2,
      Curses::KEY_F20 => :F20,
      Curses::KEY_F21 => :F21,
      Curses::KEY_F22 => :F22,
      Curses::KEY_F23 => :F23,
      Curses::KEY_F24 => :F24,
      Curses::KEY_F25 => :F25,
      Curses::KEY_F26 => :F26,
      Curses::KEY_F27 => :F27,
      Curses::KEY_F28 => :F28,
      Curses::KEY_F29 => :F29,
      Curses::KEY_F3 => :F3,
      Curses::KEY_F30 => :F30,
      Curses::KEY_F31 => :F31,
      Curses::KEY_F32 => :F32,
      Curses::KEY_F33 => :F33,
      Curses::KEY_F34 => :F34,
      Curses::KEY_F35 => :F35,
      Curses::KEY_F36 => :F36,
      Curses::KEY_F37 => :F37,
      Curses::KEY_F38 => :F38,
      Curses::KEY_F39 => :F39,
      Curses::KEY_F4 => :F4,
      Curses::KEY_F40 => :F40,
      Curses::KEY_F41 => :F41,
      Curses::KEY_F42 => :F42,
      Curses::KEY_F43 => :F43,
      Curses::KEY_F44 => :F44,
      Curses::KEY_F45 => :F45,
      Curses::KEY_F46 => :F46,
      Curses::KEY_F47 => :F47,
      Curses::KEY_F48 => :F48,
      Curses::KEY_F49 => :F49,
      Curses::KEY_F5 => :F5,
      Curses::KEY_F50 => :F50,
      Curses::KEY_F51 => :F51,
      Curses::KEY_F52 => :F52,
      Curses::KEY_F53 => :F53,
      Curses::KEY_F54 => :F54,
      Curses::KEY_F55 => :F55,
      Curses::KEY_F56 => :F56,
      Curses::KEY_F57 => :F57,
      Curses::KEY_F58 => :F58,
      Curses::KEY_F59 => :F59,
      Curses::KEY_F6 => :F6,
      Curses::KEY_F60 => :F60,
      Curses::KEY_F61 => :F61,
      Curses::KEY_F62 => :F62,
      Curses::KEY_F63 => :F63,
      Curses::KEY_F7 => :F7,
      Curses::KEY_F8 => :F8,
      Curses::KEY_F9 => :F9,
      Curses::KEY_FIND => :FIND,
      Curses::KEY_HELP => :HELP,
      Curses::KEY_HOME => :HOME,
      Curses::KEY_IC => :IC,
      Curses::KEY_IL => :IL,
      Curses::KEY_LEFT => :LEFT,
      Curses::KEY_LL => :LL,
      Curses::KEY_MARK => :MARK,
      Curses::KEY_MAX => :MAX,
      Curses::KEY_MESSAGE => :MESSAGE,
      Curses::KEY_MIN => :MIN,
      Curses::KEY_MOUSE => :MOUSE,
      Curses::KEY_MOVE => :MOVE,
      Curses::KEY_NEXT => :NEXT,
      Curses::KEY_NPAGE => :NPAGE,
      Curses::KEY_OPEN => :OPEN,
      Curses::KEY_OPTIONS => :OPTIONS,
      Curses::KEY_PPAGE => :PPAGE,
      Curses::KEY_PREVIOUS => :PREVIOUS,
      Curses::KEY_PRINT => :PRINT,
      Curses::KEY_REDO => :REDO,
      Curses::KEY_REFERENCE => :REFERENCE,
      Curses::KEY_REFRESH => :REFRESH,
      Curses::KEY_REPLACE => :REPLACE,
      Curses::KEY_RESET => :RESET,
      Curses::KEY_RESIZE => :RESIZE,
      Curses::KEY_RESTART => :RESTART,
      Curses::KEY_RESUME => :RESUME,
      Curses::KEY_RIGHT => :RIGHT,
      Curses::KEY_SAVE => :SAVE,
      Curses::KEY_SBEG => :SBEG,
      Curses::KEY_SCANCEL => :SCANCEL,
      Curses::KEY_SCOMMAND => :SCOMMAND,
      Curses::KEY_SCOPY => :SCOPY,
      Curses::KEY_SCREATE => :SCREATE,
      Curses::KEY_SDC => :SDC,
      Curses::KEY_SDL => :SDL,
      Curses::KEY_SELECT => :SELECT,
      Curses::KEY_SEND => :SEND,
      Curses::KEY_SEOL => :SEOL,
      Curses::KEY_SEXIT => :SEXIT,
      Curses::KEY_SF => :SF,
      Curses::KEY_SFIND => :SFIND,
      Curses::KEY_SHELP => :SHELP,
      Curses::KEY_SHOME => :SHOME,
      Curses::KEY_SIC => :SIC,
      Curses::KEY_SLEFT => :SLEFT,
      Curses::KEY_SMESSAGE => :SMESSAGE,
      Curses::KEY_SMOVE => :SMOVE,
      Curses::KEY_SNEXT => :SNEXT,
      Curses::KEY_SOPTIONS => :SOPTIONS,
      Curses::KEY_SPREVIOUS => :SPREVIOUS,
      Curses::KEY_SPRINT => :SPRINT,
      Curses::KEY_SR => :SR,
      Curses::KEY_SREDO => :SREDO,
      Curses::KEY_SREPLACE => :SREPLACE,
      Curses::KEY_SRESET => :SRESET,
      Curses::KEY_SRIGHT => :SRIGHT,
      Curses::KEY_SRSUME => :SRSUME,
      Curses::KEY_SSAVE => :SSAVE,
      Curses::KEY_SSUSPEND => :SSUSPEND,
      Curses::KEY_STAB => :STAB,
      Curses::KEY_SUNDO => :SUNDO,
      Curses::KEY_SUSPEND => :SUSPEND,
      Curses::KEY_UNDO => :UNDO,
      Curses::KEY_UP => :UP,
    }

    def initialize
      @state = {}
      Curses.stdscr.keypad(true)
    end

    def convert_key(c)
      if sym = INPUT_MAP[c]
        sym
      elsif c.is_a?(String)
        c.to_sym
      else
        fail "Unhandled input #{c}"
      end
    end

    def update(delta)
      keys = []

      while c = Curses.getch
        #next unless c =~ /[a-z]/i
        key = convert_key(c)
        keys << key
        on_key(key, c, :press, 0) unless @state.key?(key)
        @state[key] = true
      end

      (@state.keys - keys).each do |key|
        @state.delete(key)
        on_key(key, c, :release, 0)
      end
    end

    def on_key(key, scancode, action, mods)
    end
  end
end

module Pwdcalc
  module Version
    MAJOR = "0"
    MINOR = "1"
    PATCH = "2"
    BUILD = nil

    def self.version
      [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
    end
  end
end

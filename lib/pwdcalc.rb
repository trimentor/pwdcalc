require "pwdcalc/formtastic"

module Pwdcalc
  # Required for jquery.YAPSM.min.js and jquery.pwdcalc.js to be discoverable in the asset pipeline
  class Engine < ::Rails::Engine
    config.before_initialize do
      config.action_view.javascript_expansions[:pwdcalc] = %w(jquery.YAPSM.min.js jquery.pwdcalc.js)
    end
  end
end
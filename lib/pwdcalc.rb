require "pwdcalc/helpers/hints"

module Pwdcalc
  # Required for jquery.YAPSM.min.js and jquery.pwdcalc.js to be discoverable in the asset pipeline
  class Engine < ::Rails::Engine
    config.before_initialize do
      config.action_view.javascript_expansions[:pwdcalc] = %w(jquery.YAPSM.min.js jquery.pwdcalc.js)
    end

    initializer "pwdcalc.initialize" do

      # Add custom input to Formtastic if it's included in Gemfile
      if defined?(Formtastic)
        require 'pwdcalc/formtastic'
      end

      ActionView::Base.send :include, Pwdcalc::Helpers::Hints
    end
  end
end
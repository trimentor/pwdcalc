require "pwdcalc/helpers/hints"
require 'pwdcalc/password_strength'

module Pwdcalc
  # Required for jquery.YAPSM.min.js and jquery.pwdcalc.js to be discoverable in the asset pipeline
  class Engine < ::Rails::Engine
    config.before_initialize do
      if config.action_view.javascript_expansions
        config.action_view.javascript_expansions[:pwdcalc] = %w(jquery.YAPSM.min.js jquery.pwdcalc.js)
      end
    end

    initializer "pwdcalc.initialize" do
      # Add custom input to Formtastic if it's included in Gemfile
      if defined?(Formtastic)
        require 'pwdcalc/formtastic'
      end

      if defined?(SimpleForm)
        require 'pwdcalc/simple_form'
      end

      ActionView::Base.send :include, Pwdcalc::Helpers::Hints
    end
  end
end

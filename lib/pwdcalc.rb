require 'pwdcalc/helpers/form_helper'
require 'pwdcalc/helpers/hints'
require 'pwdcalc/form_builder'

module Pwdcalc
  # Required for jquery.YAPSM.min.js and jquery.pwdcalc.js to be discoverable in the asset pipeline
  class Engine < ::Rails::Engine
    config.before_initialize do
      if config.action_view.javascript_expansions
        config.action_view.javascript_expansions[:pwdcalc] = %w(jquery.YAPSM.min.js jquery.pwdcalc.js)
      end
    end

    initializer "pwdcalc.initialize" do
      ActionView::Base.send :include, Pwdcalc::Helpers::FormHelper
      ActionView::Base.send :include, Pwdcalc::Helpers::Hints
    end
  end
end

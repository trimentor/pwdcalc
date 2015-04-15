module Pwdcalc
  class FormBuilder < ActionView::Helpers::FormBuilder
    def password_field(method, options = {})
      options[:class] = [options.fetch(:class, ""), "pwdcalc-form-control"].join(" ").lstrip
      super <<
      @template.pwdcalc_password_gauge <<
      @template.pwdcalc_password_help_block
    end
  end
end

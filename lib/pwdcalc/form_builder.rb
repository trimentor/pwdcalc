module Pwdcalc
  class FormBuilder < ActionView::Helpers::FormBuilder
    def password_field(method, options = {})
      options[:class] = [options.fetch(:class, ""), "pwdcalc-form-control"].join(" ").lstrip

      @template.content_tag(:div, :class => 'pwdcalc-input-group') do
        super <<
        @template.pwdcalc_password_gauge
      end <<
      @template.pwdcalc_password_help_block
    end
  end
end

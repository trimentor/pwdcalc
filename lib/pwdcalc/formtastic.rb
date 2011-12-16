module Formtastic
  module Inputs
    class PwdcalcInput

      include Base
      include Base::Stringish

      def to_html
        input_wrapping do
          label_html <<
          builder.password_field(method, input_html_options) <<
          password_strength_meter(builder, method)
        end
      end

      def password_strength_meter(builder, method)
        template.content_tag(:p, "", :'data-field' => input_html_options[:id], :class => "password-strength-meter pwdcalc")
      end
    end
  end
end
module Formtastic
  module Inputs
    class PwdcalcInput

      include Base
      include Base::Stringish

      def to_html
        input_wrapping do
          label_html <<
          builder.password_field(method, input_html_options) <<
          password_strength_score <<
          password_strength_meter
        end
      end

      def password_strength_score
        template.content_tag(:div, :class => "pwdcalc-score") do
          template.content_tag(:span) do
            template.content_tag(:b, "")
          end
        end
      end

      def password_strength_meter
        template.content_tag(:p, "", :'data-field' => input_html_options[:id], :class => "password-strength-meter pwdcalc")
      end
    end
  end
end
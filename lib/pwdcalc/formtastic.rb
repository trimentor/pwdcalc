module Formtastic
  module Inputs
    class PwdcalcInput

      include Base
      include Base::Stringish
      include Pwdcalc::PasswordStrength

      def to_html
        input_wrapping do
          label_html <<
          builder.password_field(method, input_html_options) <<
          password_strength_score <<
          password_strength_meter
        end
      end
    end
  end
end

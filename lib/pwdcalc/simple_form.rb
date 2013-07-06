module SimpleForm
  module Inputs
    class PwdcalcSimpleInput < Base
      include Pwdcalc::PasswordStrength

      def input
        @builder.password_field(attribute_name, input_html_options) <<
        password_strength_score <<
        password_strength_meter
      end
    end
  end
end

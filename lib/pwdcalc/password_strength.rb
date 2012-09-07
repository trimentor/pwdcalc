module Pwdcalc
  module PasswordStrength
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

module Pwdcalc
  # = Pwdcalc Form Helpers
  module Helpers
    module FormHelper

      def pwdcalc_password_gauge
        content_tag(:div, :class => 'pwdcalc-gauge') do
          content_tag(:span) do
            content_tag(:b, "")
          end
        end
      end

      def pwdcalc_password_help_block
        content_tag(:div, "", :class => 'pwdcalc-help-block')
      end

      def pwdcalc_translated_hints
        content_tag(:div, :class => 'pwdcalc-hints') do
          safe_join Pwdcalc::Helpers::Hints.translate_hints.map.with_index { |hint, index|
            content_tag(:div, hint, :class => 'pwdcalc-hint', :data => {:complexity => Pwdcalc::Helpers::Hints::STRENGTH_TYPES[index].to_s.gsub(/_/, '-')})
          }, "\n"
        end
      end

    end
  end
end

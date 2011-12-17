module Pwdcalc
  module Helpers

    module Hints
      STRENGTH_TYPES = [:weak, :fair, :good, :strong, :very_strong, :dictionary_word]

      def pwdcalc_hints
        content_tag(:div, :class => "password-strength-meter pwdcalc-hints") do
          to_html
        end
      end

      def localized_hints
        STRENGTH_TYPES.collect {|strength_type| I18n.t("pwdcalc.#{strength_type}") }
      end

      def to_html
        hints = []
        localized_hints.each_with_index do |hint, index|
          hints << content_tag(:p, hint, :class => "password-strength-meter pwdcalc-hint", :'data-complexity' => STRENGTH_TYPES[index].to_s.gsub(/_/, '-'))
        end
        hints.join("\n").html_safe
      end
    end

  end
end
module Pwdcalc
  module Helpers

    module Hints
      STRENGTH_TYPES = [:weak, :fair, :good, :strong, :very_strong, :dictionary_word]

      def translate_hints
        STRENGTH_TYPES.collect { |strength_type| I18n.t("pwdcalc.#{strength_type}") }
      end
      module_function :translate_hints

    end

  end
end

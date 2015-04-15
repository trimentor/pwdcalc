require 'spec_helper'

RSpec.describe Pwdcalc::Helpers::Hints do

  describe '.translate_hints' do
    it 'returns a collection of translated hints' do
      hints = Pwdcalc::Helpers::Hints::STRENGTH_TYPES.collect {|strength_type| I18n.t("pwdcalc.#{strength_type}") }
      expect(Pwdcalc::Helpers::Hints.translate_hints).to eq(hints)
    end
  end

end

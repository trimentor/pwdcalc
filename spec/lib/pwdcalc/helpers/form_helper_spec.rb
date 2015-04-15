require 'spec_helper'

RSpec.describe Pwdcalc::Helpers::FormHelper, :type => :helper do

  describe '#pwdcalc_password_gauge' do
    it 'returns HTML content' do
      expect(helper.pwdcalc_password_gauge).to eq('<div class="pwdcalc-gauge"><span><b></b></span></div>')
    end
  end

  describe '#pwdcalc_password_help_block' do
    it 'returns HTML content' do
      expect(helper.pwdcalc_password_help_block).to eq('<div class="pwdcalc-help-block"></div>')
    end
  end

  describe '#pwdcalc_i18n_hints' do
    it 'returns HTML content' do
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="weak">Password is very weak.</div>')
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="fair">Password could be more secure.</div>')
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="good">Password is okay.</div>')
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="strong">Password is strong.</div>')
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="very-strong">Password is perfect!</div>')
      expect(helper.pwdcalc_i18n_hints).to match('<div class="pwdcalc-hint" data-complexity="dictionary-word">Password is too obvious.</div>')
    end
  end

end

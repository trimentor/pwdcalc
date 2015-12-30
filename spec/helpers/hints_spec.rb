require 'spec_helper'

describe "PwdCalc::Helpers::Hints" do
  describe "#pwdcalc_hints" do
    it "renders a wrapper element for the hints" do
      expect(helper).to receive(:to_html)
      expect(helper.pwdcalc_hints).to eq('<div class="password-strength-meter pwdcalc-hints"></div>')
    end
  end

  describe "#translate_hints" do
    it "returns a collection of translated hints" do
      hints = Pwdcalc::Helpers::Hints::STRENGTH_TYPES.collect {|strength_type| I18n.t("pwdcalc.#{strength_type}") }
      expect(helper.translate_hints).to eq(hints)
    end
  end

  describe "#to_html" do
    before do
      @strength = Pwdcalc::Helpers::Hints::STRENGTH_TYPES.first
      allow(helper).to receive(:translate_hints).and_return([@strength])
    end

    it "renders paragraphs" do
      expect(helper.to_html).to eq("<p class=\"password-strength-meter pwdcalc-hint\" data-complexity=\"#{@strength}\">#{@strength}</p>")
    end
  end
end
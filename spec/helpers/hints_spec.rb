require 'spec_helper'

describe "PwdCalc::Helpers::Hints" do
  describe "#pwdcalc_hints" do
    it "renders a wrapper element for the hints" do
      helper.should_receive(:to_html)
      helper.pwdcalc_hints.should == '<div class="password-strength-meter pwdcalc-hints"></div>'
    end
  end

  describe "#translate_hints" do
    it "returns a collection of translated hints" do
      hints = Pwdcalc::Helpers::Hints::STRENGTH_TYPES.collect {|strength_type| I18n.t("pwdcalc.#{strength_type}") }
      helper.translate_hints.should == hints
    end
  end

  describe "#to_html" do
    before do
      @strength = Pwdcalc::Helpers::Hints::STRENGTH_TYPES.first
      helper.stub(:translate_hints).and_return([@strength])
    end

    it "renders paragraphs" do
      helper.to_html.should == "<p class=\"password-strength-meter pwdcalc-hint\" data-complexity=\"#{@strength}\">#{@strength}</p>"
    end
  end
end
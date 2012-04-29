require 'spec_helper'

# Generators are not automatically loaded by Rails.
require 'rails/generators'
require 'generators/pwdcalc/install/install_generator'

require 'generator_spec/test_case'

describe Pwdcalc::Generators::InstallGenerator do

  include GeneratorSpec::TestCase

  # Tell the generator where to put its output.
  destination File.expand_path("../../tmp", __FILE__)

  before { prepare_destination }
  after  { remove_dir File.expand_path("../../tmp", __FILE__) }

  context "Rails version 3.1 or higher" do
    before(:each) do
      ::Rails.stub(:version) { "3.1" }
      run_generator
    end

    context "no arguments" do
      describe "config/locales/pwdcalc.en.yml" do
        it { assert_file 'config/locales/pwdcalc.en.yml' }
      end

      describe "public/javascripts/jquery.YAPSM.min.js" do
        it { assert_no_file 'public/javascripts/jquery.YAPSM.min.js' }
      end

      describe "public/javascripts/jquery.pwdcalc.js" do
        it { assert_no_file 'public/javascripts/jquery.pwdcalc.js' }
      end

      describe "public/stylesheets/pwdcalc.css.scss" do
        it { assert_no_file 'public/stylesheets/pwdcalc.css.scss' }
      end
    end
  end

  context "Rails version 3.0 or lower" do
    before(:each) do
      ::Rails.stub(:version) { "3.0" }
      run_generator
    end

    context "no arguments" do
      describe "config/locales/pwdcalc.en.yml" do
        it { assert_file 'config/locales/pwdcalc.en.yml' }
      end

      describe "public/javascripts/jquery.YAPSM.min.js" do
        it { assert_file 'public/javascripts/jquery.YAPSM.min.js' }
      end

      describe "public/javascripts/jquery.pwdcalc.js" do
        it { assert_file 'public/javascripts/jquery.pwdcalc.js' }
      end

      describe "public/stylesheets/pwdcalc.css.scss" do
        it { assert_file 'public/stylesheets/pwdcalc.css.scss' }
      end
    end
  end

end
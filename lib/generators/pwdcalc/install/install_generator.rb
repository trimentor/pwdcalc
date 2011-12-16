module Pwdcalc
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      if ::Rails.version[0..2].to_f >= 3.1
        # Rails 3.1 has the asset pipeline, no need to copy JS files any more.
      else
        copy_file "../../../../../app/assets/javascripts/jquery.YAPSM.min.js", "public/javascripts/jquery.YAPSM.min.js"
        copy_file "../../../../../app/assets/javascripts/jquery.pwdcalc.js", "public/javascripts/jquery.pwdcalc.js"
      end

      def copy_locales
        copy_file "pwdcalc.en.yml", "config/locales/pwdcalc.en.yml"
      end

    end
  end
end
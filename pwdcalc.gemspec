# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: pwdcalc 0.1.11 ruby lib

Gem::Specification.new do |s|
  s.name = "pwdcalc"
  s.version = "0.1.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kjel Delaey"]
  s.date = "2015-12-29"
  s.description = "Take no risk and help your users to choose good passwords!"
  s.email = "kjel_delaey@hotmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "app/assets/javascripts/jquery.YAPSM.min.js",
    "app/assets/javascripts/jquery.pwdcalc.js",
    "app/assets/stylesheets/pwdcalc.css.scss",
    "lib/generators/pwdcalc/install/install_generator.rb",
    "lib/generators/pwdcalc/install/templates/pwdcalc.en.yml",
    "lib/pwdcalc.rb",
    "lib/pwdcalc/formtastic.rb",
    "lib/pwdcalc/helpers/hints.rb",
    "lib/pwdcalc/password_strength.rb",
    "lib/pwdcalc/simple_form.rb",
    "lib/pwdcalc/version.rb",
    "pwdcalc.gemspec",
    "spec/.gitignore",
    "spec/dummy/Rakefile",
    "spec/dummy/app/assets/javascripts/application.js",
    "spec/dummy/app/assets/stylesheets/application.css",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/mailers/.gitkeep",
    "spec/dummy/app/models/.gitkeep",
    "spec/dummy/app/views/layouts/application.html.erb",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/routes.rb",
    "spec/dummy/lib/assets/.gitkeep",
    "spec/dummy/log/.gitkeep",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/script/rails",
    "spec/generators/pwdcalc/install/install_generator_spec.rb",
    "spec/helpers/hints_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "https://github.com/trimentor/pwdcalc"
  s.rubygems_version = "2.5.1"
  s.summary = "Calculates the strength of user-chosen passwords."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.7.0"])
      s.add_development_dependency(%q<generator_spec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.7.0"])
      s.add_dependency(%q<generator_spec>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.7.0"])
    s.add_dependency(%q<generator_spec>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end


begin
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
end

begin
  require 'jeweler'
  require './lib/pwdcalc/version'

  Jeweler::Tasks.new do |gem|
    gem.name = "pwdcalc"
    gem.summary = %Q{Calculates the strength of user-chosen passwords.}
    gem.description = %Q{Take no risk and help your users to choose good passwords!}
    gem.email = "kjel_delaey@hotmail.com"
    gem.homepage = "https://github.com/trimentor/pwdcalc"
    gem.authors = ["Kjel Delaey"]
    gem.version = Pwdcalc::Version.version
  end
  Jeweler::RubygemsDotOrgTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
  t.rspec_opts = ['--format documentation --color']
end

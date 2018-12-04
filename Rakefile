STDOUT.sync = true

def in_gem_install?
  ENV["RUBYLIBDIR"] && ENV["RUBYARCHDIR"]
end

namespace :install do
  desc "install chromedriver now"
  task :chromedriver do
    require_relative "lib/superbot"
    Superbot::Selenium::WebDriver.install_chromedriver_helper!
  end
end

unless in_gem_install?
  require "bundler/gem_tasks"
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new(:spec)

  task default: [:spec]
else
  task default: ["install:chromedriver"]
end

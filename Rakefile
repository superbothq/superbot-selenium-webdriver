STDOUT.sync = true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task default: [:chromedriver]

task :chromedriver do
  Superbot::Selenium::WebDriver.install_chromedriver_helper!
end

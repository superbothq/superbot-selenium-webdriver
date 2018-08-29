STDOUT.sync = true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: [:chromedriver]

task :chromedriver do
  download_done = false

  print "🤖 downloading chromedriver "
  Thread.new do
    loop do
      break if download_done
      print "."
      sleep 0.5
    end
  end
  Superbot::Selenium::WebDriver.install_chromedriver_helper!

  download_done = true
  puts " done"
end

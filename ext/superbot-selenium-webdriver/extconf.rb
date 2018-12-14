
lib_dir = File.expand_path('../../lib', File.dirname(__FILE__))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require "superbot/selenium/webdriver"

Superbot::Selenium::WebDriver.install_chromedriver_helper!

require "mkmf"
create_makefile('ext')

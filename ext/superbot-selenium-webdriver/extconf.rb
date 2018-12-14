require "superbot/selenium/webdriver"
Superbot::Selenium::WebDriver.install_chromedriver_helper!

require "mkmf"
create_makefile('ext')

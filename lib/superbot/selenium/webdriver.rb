require "chromedriver-helper"
require "selenium-webdriver"

module Superbot
  module Selenium
    module WebDriver
      def self.install_chromedriver_helper!
        Chromedriver.set_version "2.44"
      end
    end
  end
end

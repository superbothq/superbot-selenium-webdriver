require "chromedriver/helper"
require "selenium-webdriver"

module Superbot
  module Selenium
    module WebDriver
      def self.install_chromedriver_helper!
        Chromedriver.set_version "2.41"
      end

      def self.use_chromedriver_helper!
        helper = Chromedriver::Helper.new
        ::Selenium::WebDriver::Chrome.driver_path = helper.binary_path
      end
    end
  end
end

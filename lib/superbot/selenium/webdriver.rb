require "chromedriver/helper"
require "selenium-webdriver"

module Superbot
  module Selenium
    module WebDriver
      def self.use_chromedriver_helper!
        helper = Chromedriver::Helper.new
        ::Selenium::WebDriver::Chrome.driver_path = helper.binary_path
      end
    end
  end
end

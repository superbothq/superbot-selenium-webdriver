require "selenium-webdriver"
require "chromedriver-helper"

module Superbot
  module Selenium
    module WebDriver
      def self.install_chromedriver_helper!
        version="2.44"
        Chromedriver.set_version version
        binary_path = Chromedriver::Helper.new.binary_path
        "installed chromedriver-helper version #{version} to #{binary_path}"
      end
    end
  end
end


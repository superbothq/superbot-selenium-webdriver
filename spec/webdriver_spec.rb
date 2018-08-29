RSpec.describe Superbot::Selenium::WebDriver do
  it do
    expect(Superbot::Selenium::WebDriver::VERSION).not_to be_nil
  end

  it "uses chromedriver-helper" do
    Superbot::Selenium::WebDriver.use_chromedriver_helper!

    options = Selenium::WebDriver::Chrome::Options.new
    driver = Selenium::WebDriver.for :chrome, options: options
    driver.navigate.to "http://example.com"
  end
end

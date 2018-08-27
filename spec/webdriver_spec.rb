RSpec.describe Superbot::Selenium::WebDriver do
  it do
    expect(Superbot::Selenium::WebDriver::VERSION).to eq "314.1.0"
  end

  it "uses chromedriver-helper" do
    Superbot::Selenium::WebDriver.use_chromedriver_helper!

    options = Selenium::WebDriver::Chrome::Options.new
    driver = Selenium::WebDriver.for :chrome, options: options
    driver.navigate.to "http://example.com"
  end
end

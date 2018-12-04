RSpec.describe Superbot::Selenium::WebDriver do
  it do
    expect(Superbot::Selenium::WebDriver::VERSION).not_to be_nil
  end

  it "launches browser" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "about:blank"
  end
end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "superbot/selenium/version"
#require "superbot/selenium/webdriver"

Gem::Specification.new do |spec|
  spec.name          = "superbot-selenium-webdriver"
  spec.version       = Superbot::Selenium::WebDriver::VERSION
  spec.authors       = ["Superbot HQ"]

  spec.summary       = %q{superbot verified selenium-webdriver}
  spec.homepage      = "http://github.com/superbothq/superbot-selenium-webdriver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.extensions << 'Rakefile'
  spec.add_runtime_dependency "chromedriver-helper", "2.1.0"
  spec.add_runtime_dependency "selenium-webdriver", "3.141.0"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 11.3"
  spec.add_development_dependency "rspec", "~> 3.8"
end

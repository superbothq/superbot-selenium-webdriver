
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "superbot/selenium/version"

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

  spec.extensions = %w[ext/superbot-selenium-webdriver/extconf.rb]
  spec.post_install_message = "Installed chromedriver 2.44 to #{ENV['HOME']}/.chromedriver-helper"

  spec.add_runtime_dependency "chromedriver-helper", "2.1.0"
  spec.add_runtime_dependency "selenium-webdriver", "3.141.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "rake", "~> 10.0"
end

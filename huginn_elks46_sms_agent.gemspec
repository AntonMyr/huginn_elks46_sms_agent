# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "huginn_elks46_sms_agent"
  spec.version       = '0.1'
  spec.authors       = ["antonmyr"]
  spec.email         = ["anton@46elks.com"]

  spec.summary       = %q{Send SMS from Huginn using https://46elks.com.}
  spec.description   = <<-MD
## What is this?

This is an agent that allows you to send SMS with the help of https://46elks.com.

## Want more?

Check out these agents as well:

-   [Sending MMS from Huginn]()
-   [Making Phone calls from Huginn]()
    MD

  spec.homepage      = "https://github.com/antonmyr/huginn_elks46_sms_agent"

  spec.license       = "MIT"


  spec.files         = Dir['LICENSE.txt', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir['spec/**/*.rb'].reject { |f| f[%r{^spec/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "huginn_agent"
end

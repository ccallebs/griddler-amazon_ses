# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'griddler/amazon_s3_ses/version'

Gem::Specification.new do |spec|
  spec.name          = "griddler-amazon_s3_ses"
  spec.version       = Griddler::AmazonS3SES::VERSION
  spec.authors       = ["Thomas Blakey"]
  spec.email         = ["thomas.blakey@appearhere.co.uk"]

  spec.summary       = %q{Griddler adapter for AWS S3 SES (handle incoming email replies through SES and S3)}
  spec.homepage      = "https://github.com/appearhere/griddler-amazon_s3_ses"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'griddler'
  spec.add_runtime_dependency 'mail'
  spec.add_runtime_dependency 'httparty'
  spec.add_runtime_dependency 'aws-sdk-s3'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

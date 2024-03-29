# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rack_health"
  spec.version       = "1.0.0"
  spec.authors       = ["Martin Fernandez"]
  spec.email         = ["fmartin91@gmail.com"]

  spec.summary       = %q{ Rack health check middleware. }
  spec.description   = %q{ Rack health check middleware. }
  spec.homepage      = "https://github.com/bilby91/rack_health"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rack', '~> 1.0', '>= 1.0.0'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "server_gem_listen/version"

Gem::Specification.new do |spec|
  spec.name          = "server-gem-listen"
  spec.version       = ServerGemListen::VERSION
  spec.authors       = ["Vladimir Avgustov"]
  spec.email         = ["vavgustov@gmail.com"]

  spec.summary       = %q{Automatically restart Rails server when you hack gem for experiments.}
  spec.description   = %q{Automatically restart Rails server when you hack gem for experiments. You can use it for quick 'scientific' experiments with Rails core or gems.}
  spec.homepage      = "https://github.com/vavgustov/server-gem-listen."
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "> 5.0", "< 6"
  spec.add_runtime_dependency "awesome_print", ">= 1.6", "< 1.9"
  spec.add_runtime_dependency "bundler", "~> 1.16"
  spec.add_runtime_dependency "listen", "~> 3.1"
end

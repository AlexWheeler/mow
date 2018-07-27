
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mow/version"

Gem::Specification.new do |spec|
  spec.name          = "mow"
  spec.version       = Mow::VERSION
  spec.authors       = ["Alex Wheeler"]
  spec.email         = ["afwheeler92@gmail.com"]
  spec.summary       = %q{Given a ruby file generate a ruby one-liner}
  spec.description   = %q{Given a ruby file generate a ruby one-liner}
  spec.homepage      = "https://www.github.com/alexwheeler/mow"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["mow"]
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

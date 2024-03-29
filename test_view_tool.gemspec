
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "test_view_tool"
  spec.version       = TestViewTool::VERSION
  spec.authors       = ["charb"]
  spec.email         = ["30449853+aleccharb@users.noreply.github.com"]

  spec.summary       = %q{ Ahhhhh tutorial gem file.}
  spec.description   = %q{ Ahhhhh another tutorial gem file.}
  spec.homepage      = "https://github.com/acharb/test_view_tool"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end

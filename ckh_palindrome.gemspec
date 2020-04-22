require_relative 'lib/ckh_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "ckh_palindrome"
  spec.version       = CkhPalindrome::VERSION
  spec.authors       = ["CKHarrison"]
  spec.email         = ["hirohumi1882@gmail.com"]

  spec.summary       = %q{Palindrome Detector}
  spec.description   = %q{Learn Enough Ruby palindrome detector}
  spec.homepage      = "https://github.com/CKHarrison/ckh_palindrome_dectector"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/CKHarrison/ckh_palindrome_dectector."
  spec.metadata["changelog_uri"] = "https://github.com/CKHarrison/ckh_palindrome_dectector"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

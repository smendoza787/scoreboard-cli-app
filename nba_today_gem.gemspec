# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nba_today_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "nba_today_gem"
  spec.version       = NbaTodayGem::VERSION
  spec.authors       = ["Sergio Mendoza"]
  spec.email         = ["smendoza787@gmail.com"]

  spec.summary       = "A gem for finding the latest NBA scores."
  spec.description   = "Get the latest NBA scores right through your terminal!"
  spec.homepage      = "https://github.com/smendoza787/nba-today-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["nba_today_gem"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri", "~> 1.7"
  spec.add_runtime_dependency "command_line_reporter", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

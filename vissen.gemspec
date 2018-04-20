
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vissen/version'

Gem::Specification.new do |spec|
  spec.name          = 'vissen'
  spec.version       = Vissen::VERSION
  spec.authors       = ['Sebastian Lindberg', 'Henrik Forssell']
  spec.email         = ['seb.lindberg@gmail.com']

  spec.summary       = 'Main vissen client library'
  # spec.description   = 'TODO: Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/midi-visualizer/vissen'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',  '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake',     '~> 10.0'
end

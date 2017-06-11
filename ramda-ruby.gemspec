# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ramda/version'

Gem::Specification.new do |spec|
  spec.name          = 'ramda-ruby'
  spec.version       = Ramda::VERSION
  spec.authors       = ['Vadim Lazebny']
  spec.email         = ['vadim.lazebny@gmail.com']

  spec.summary       = 'Ramda library implementation.'
  spec.description   = 'Ramda library implementation.'
  spec.homepage      = 'http://example.com'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://example.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'rubocop', '~> 0.49.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.15.1'
end
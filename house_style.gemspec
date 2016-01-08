# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'house_style'
  spec.version       = '0.2.1'
  spec.authors       = ['Scott Matthewman']
  spec.email         = ['scott@altmetric.com']

  spec.summary       = 'A centralised store of house style rules'
  spec.description   = 'Configuration files and other snippets to help you apply standards across multiple projects'
  spec.homepage      = 'https://github.com/altmetric/house_style'
  spec.license       = 'MIT'

  spec.files         = Dir["{lib, rspec, ruby, rails}/**/*", "LICENSE.txt", "Rakefile", "README.md", "CHANGELOG.md"]
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.35.1'
  spec.add_dependency 'rubocop-rspec', '~> 1.3.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end

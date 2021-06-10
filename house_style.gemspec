lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'house_style'
  spec.version       = '2.0.2'
  spec.authors       = ['Altmetric', 'Scott Matthewman']
  spec.email         = ['engineering@altmetric.com', 'scott.matthewman@gmail.com']

  spec.summary       = 'A centralised store of house style rules'
  spec.description   = 'Configuration files and other snippets to help you apply standards across multiple projects'
  spec.homepage      = 'https://github.com/altmetric/house_style'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 1.0', '< 1.16'
  spec.add_dependency 'rubocop-performance', '~> 1.11.3'
  spec.add_dependency 'rubocop-rails', '~> 2.10.1'
  spec.add_dependency 'rubocop-rake', '< 1.0'
  spec.add_dependency 'rubocop-rspec', '~> 2.3.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
end
